package Mojolicious::Plugin::Log::Access.pm
use Mojo::Base 'Mojolicious::Plugin';

our $VERSION = '0.001';

sub register {
  my ($self, $app) = @_;
}

1;
__END__

=head1 NAME

Mojolicious::Plugin::Log::Access - Provide access logging

=head1 SYNOPSIS

  # Mojolicious
  $self->plugin('Mojolicious::Plugin::Log::Access');

  # Mojolicious::Lite
  plugin 'Mojolicious::Plugin::Log::Access';

=head1 DESCRIPTION

L<Mojolicious::Plugin::Log::Access> is a L<Mojolicious> plugin for adding access
logging to your web application.

=head1 METHODS

L<Mojolicious::Plugin::Log::Access> inherits all methods from
L<Mojolicious::Plugin>.

=head2 register

  $plugin->register(Mojolicious->new);

Register plugin in L<Mojolicious> application.

=head1 SEE ALSO

L<Mojolicious>, L<Mojolicious::Guides>, L<http://mojolicio.us>.
