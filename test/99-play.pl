use Mojolicious::Lite;

use Mojar::Log;
plugin 'Log::Access';

get '/' => sub {
  my $self = shift;
  $self->render('index');
};

app->log(Mojar::Log->new(pattern => '%y%m%d %X'));
app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'Welcome';
Welcome to the Mojolicious real-time web framework!

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>
