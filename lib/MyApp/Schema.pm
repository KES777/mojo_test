package MyApp::Schema;

our $VERSION =  2;


use strict;
use warnings;

# based on the DBIx::Class Schema base class
use base qw/DBIx::Class::Schema/;

__PACKAGE__->load_namespaces(
	default_resultset_class =>  'ResultSet'
);


1;
