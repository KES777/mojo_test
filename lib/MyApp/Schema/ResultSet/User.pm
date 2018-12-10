package MyApp::Schema::ResultSet::User;

use strict;
use warnings;

use base 'MyApp::Schema::ResultSet';


# find contact with given email and/or phone
sub active {
	shift->search({ is_deleted => 1 });
}


1;
