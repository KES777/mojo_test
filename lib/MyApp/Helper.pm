package MyApp::Helper;

use MyApp::Schema;

sub add_helpers {
	my( $app ) =  @_;

	$app->helper( db =>  sub{ db_handle( $app ) } );
}


my $schema;
sub db_handle {
	return $schema    if $schema;

	my( $app ) =  @_;

	my $DB =  $app->config->{ db };
	$DB->{ DSN } =  sprintf "dbi:%s:dbname=%s;host=%s;port=%s",
		@$DB{ qw/ DRVR NAME HOST PORT / };

	my $args = {
		AutoCommit => 1,
		RaiseError => 1,
		PrintError => 1,
		ShowErrorStatement => 1,
		# HandleError => sub{ DB::x; 1; },
		# unsafe => 1,
		quote_char => '"'  # Syntax error: SELECT User.id because of reserwed word
	};

	$schema =   MyApp::Schema->connect( $DB->{ DSN }, @$DB{ qw/ USER PASS / }, %args );
}

1;
