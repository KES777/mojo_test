package MyApp;
use Mojo::Base 'Mojolicious';

use MyApp::Helper;

# This method will run once at server start
sub startup {
  my $self = shift;

  # Load configuration from hash returned by config file
  my $config = $self->plugin( 'Config',
    file => 'etc/' .$self->moniker .'.conf'
  );

  MyApp::Helper::add_helpers( $self );

  # Configure the application
  $self->secrets($config->{secrets});

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('example#welcome');

  $r->get('user')->to('user#list');
}

1;
