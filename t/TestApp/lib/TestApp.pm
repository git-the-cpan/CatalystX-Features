package TestApp;
our $VERSION = '0.10';

use strict;
use warnings;

use Catalyst::Runtime 5.70;

# Set flags and add plugins for the application
#
#         -Debug: activates the debug mode for very useful log messages
#   ConfigLoader: will load the configuration from a Config::General file in the
#                 application's home directory
# Static::Simple: will serve static files from the application's root
#                 directory

use base qw/Catalyst/;
use Catalyst qw/-Debug
                +CatalystX::Features
                +CatalystX::Features::Lib
                +CatalystX::Features::Plugin::ConfigLoader
                +CatalystX::Features::Plugin::I18N
                +CatalystX::Features::Plugin::Static::Simple/;

# Configure the application.
#
# Note that settings in testapp.conf (or other external
# configuration file that you set up manually) take precedence
# over this when using ConfigLoader. Thus configuration
# details given here can function as a default configuration,
# with an external configuration file acting as an override for
# local deployment.

__PACKAGE__->config( name => 'TestApp' );

__PACKAGE__->config->{static}->{dirs} = [
'static',
	qr/^(images|html|css)/,
	];

# Start the application
__PACKAGE__->setup();


=head1 NAME

TestApp - Catalyst based application

=head1 SYNOPSIS

    script/testapp_server.pl

=head1 DESCRIPTION

[enter your description here]

=head1 SEE ALSO

L<TestApp::Controller::Root>, L<Catalyst>

=head1 AUTHOR

	Rodrigo de Oliveira (rodrigolive), C<rodrigolive@gmail.com>

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
