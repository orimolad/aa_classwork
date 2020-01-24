Rails.application.routes.draw do
  # get 'artwork_shares/create'
  # get 'artwork_shares/destroy'
  # get 'artwork/create'
  # get 'artwork/destroy'
  # get 'artwork/update'
  # get 'artwork/show'
  # get 'artwork/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :users

  # get 'users', to: 'users#index'
  # get 'users/:id', to: 'users#show'
  # get 'users/new', to: 'users#new'
  # post 'users', to: 'users#create'
  # patch 'users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'
  # get 'users/:id/edit', to: 'users#edit'
  resources :users do
    resources :artworks, only:[:index]
  end
  
    resources :users, except: [:edit, :new]

  resources :artworks, except: [:edit, :new]

end
