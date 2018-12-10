package MyApp::Controller::User;

use Mojo::Base 'MyApp::Controller';

sub list {
	my( $c ) =  @_;

	my $dsUser =  $c->db->resultset( 'User' );
	$c->render( 'user/list', rows => $dsUser );
}

1;
