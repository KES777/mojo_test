package MyApp::Controller::User;

use Mojo::Base 'MyApp::Controller';

sub list {
	my( $c ) =  @_;

	$c->render( text => 'OK' );
}

1;
