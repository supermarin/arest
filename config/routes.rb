BWHttp::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  get 'http' => 'http#get' # HEAD works out of the box as GET
  post 'http' => 'http#post'
  put 'http' => 'http#put'
  delete 'http' => 'http#delete'
  # 'http' => 'http#patch' # Can't get this working
  
end
