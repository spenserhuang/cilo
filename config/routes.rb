Rails.application.routes.draw do


  get  '/login'  => 'sessions#new'
  post '/login'  => 'sessions#create'
  get  '/logout' => 'sessions#destroy'

  get  '/signup' => 'users#new'
  post '/users'  => 'users#create'


  get  '/home'   => 'index#home'
  get  '/browse' => 'index#browse'

  get  '/dashboard' => 'users#dashboard'

  get  'users/:id' => 'users#show'

  root 'index#home'

end
