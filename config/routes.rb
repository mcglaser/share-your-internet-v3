Rails.application.routes.draw do


  root 'static_pages#home'

  get 'signup' => 'users#new'

  get 'signup' => 'users#new'

  get 'login' => 'sessions#new'

  post 'login' => 'sessions#create'
  
  delete 'logout' => 'sessions#destroy'

  get 'average' => 'users#average_internet'

  get 'employee' => 'static_pages#employee'

  get '/auth/facebook/callback' => 'employees#create'

  resources :users do
      post 'in_it', action: :in_it
      resources :rolodexes
  end

  resources :communities
  resources :rolodexes
  resources :referrals
  resources :employees


end