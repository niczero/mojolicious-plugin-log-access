use Mojo::Base -strict;
use Test::More;
use Mojolicious::Lite;
use Test::Mojo;

plugin 'Mojolicious::Plugin::Log::Access';

get '/' => sub {
  my $self = shift;
  $self->render(text => 'Hello Mojo!');
};

# All of this is borrowed from Mojolicious

my $t = Test::Mojo->new;
my $log = '';
my $cb = $t->app->log->on(message => sub { $log .= pop });
$t->get_ok('//127.0.0.1/')->status_is(200)->content_is('Hello Mojo!');
like $log, qr{127.0.0.1 \"/\" 200}, 'right message';
$t->app->log->unsubscribe(message => $cb);

$log = '';
$cb = $t->app->log->on(message => sub { $log .= pop });
$t->app->log->level('info');
$t->get_ok('//127.0.0.1/')->status_is(200)->content_is('Hello Mojo!');
like $log, qr{127.0.0.1 \"/\" 200}, q{right message under 'info'};
$t->app->log->unsubscribe(message => $cb);

done_testing();
