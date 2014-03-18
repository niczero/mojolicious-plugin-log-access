use Mojo::Base -strict;
use Test::More;

my $package = 'Mojolicious::Plugin::Log::Access';
my $version = "$Mojolicious::Plugin::Log::Access::VERSION";
use_ok $package;
diag "Testing $package $version, Perl $], $^X";

done_testing();
