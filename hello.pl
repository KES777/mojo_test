use Mojolicious::Lite;

get '/' => {text => 'Hello World!'};

warn "APP START";

app->start;
