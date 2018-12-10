package MyApp::Schema::Result::User;

use strict;
use warnings;

use base 'MyApp::Schema::Result';



my $T =  __PACKAGE__;
$T->table( 'users' );


$T->add_columns(
	id =>  {
		data_type         =>  'integer',
		is_auto_increment =>  1,
	},
	email =>  {
		data_type   =>  'varchar',
		size        =>  128,
		is_nullable =>  1,
	},
	login =>  {
		data_type   =>  'varchar',
		size        =>  32,
		is_nullable =>  1,
	},
	password => {
		data_type =>  'varchar',
		size      =>  128,
	},
	data =>  {
		data_type        =>  'json',
		serializer_class =>  'JSON',
		default_value    =>  \"'{}'::json",
	},
);

$T->set_primary_key( 'id' );
$T->add_unique_constraint([ 'email' ]);


1;

# my $dsUser =  $->db->model( 'User' )->active;
# while( my $user =  $dsUser->next ) {
# 	DDP::p( $user );
# }
