BWHttp::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  get '' => 'http#get' # HEAD works out of the box as GET
  post '/' => 'http#post'
  put '/' => 'http#put'
  delete '/' => 'http#delete'
  # 'http' => 'http#patch' # Can't get this working

end
