Rails.application.routes.draw do


  root 'static_pages#home'

  get 'signup' => 'users#new'

  get 'signup' => 'users#new'

  get 'login' => 'sessions#new'

  post 'login' => 'sessions#create'
  
  delete 'logout' => 'sessions#destroy'

  get 'average' => 'users#average_internet'

  resources :users do
      post 'in_it', action: :in_it
  end

  resources :communities


end