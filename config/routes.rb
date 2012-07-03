BWHttp::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  get '/:format/' => 'http#get' # HEAD works out of the box as GET
  post '/:format/' => 'http#post'
  put '/:format/' => 'http#put'
  delete '/:format/' => 'http#delete'
  # 'http' => 'http#patch' # Can't get this working

end
