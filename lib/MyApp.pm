package MyApp;
use Mojo::Base 'Mojolicious';

use MyApp::Helper;

# This method will run once at server start
sub startup {
  my $app = shift;

  # Load configuration from hash returned by config file
  my $config = $app->plugin( 'Config',
    file => 'etc/' .$app->moniker .'.conf'
  );

  MyApp::Helper::add_helpers( $app );

  # Configure the application
  $app->secrets($config->{secrets});

  # Router
  my $r = $app->routes;

  # Normal route to controller
  $r->get('/')->to('example#welcome');

  $r->get('user')->to('user#list');
}

1;
