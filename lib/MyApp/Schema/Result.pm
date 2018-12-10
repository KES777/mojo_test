package MyApp::Schema::Result;

use Modern::Perl;

# use Mojo::Base -strict;
# https://mojolicious.org/perldoc/Mojo/Base#DESCRIPTION

# use utf8;
# use strict;
# use warnings;
use base 'DBIx::Class::Core';

# Put useful things here which will be available from any Result:: class
__PACKAGE__->load_components(qw/
	InflateColumn::Serializer
	InflateColumn::DateTime
/);


1;
