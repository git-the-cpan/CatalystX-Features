package TestApp;
our $VERSION = '0.11_01';

use strict;
use warnings;

use Catalyst::Runtime 5.70;

use base qw/Catalyst/;
use Catalyst qw/+CatalystX::Features
                +CatalystX::Features::Lib
                +CatalystX::Features::Plugin::ConfigLoader
                /;

__PACKAGE__->config( name => 'TestApp' );

# Start the application
__PACKAGE__->setup();

1;

