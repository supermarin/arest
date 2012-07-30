BWHttp::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.


  match '/:format/' => 'http#process_request'
  match '/:format/redirect/' => 'http#redirect'
  
  root :to => 'home#index'
end
