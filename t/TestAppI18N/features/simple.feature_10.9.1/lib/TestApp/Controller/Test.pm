package TestApp::Controller::Test;
our $VERSION = '0.11';


use strict;
use warnings;
use parent 'Catalyst::Controller';

__PACKAGE__->config->{namespace} = 'test';

sub loc : Local {
    my ( $self, $c ) = @_;
	$c->languages( ['es'] );
    $c->response->body( $c->loc('bummer') );
}

sub end : ActionClass('RenderView') {}

1;
