Rails.application.routes.draw do
  root "sessions#new" # Login generale
  post 'sessions', to: 'sessions#create', as: 'sessions' # Route per il login
  delete 'logout', to: 'sessions#destroy', as: 'logout'

  get 'home', to: 'home#index', as: 'home'

  namespace :admin do
    root to: 'users#index'
    resources :users
    post 'create', to: 'users#create'
    get 'new', to: 'users#new', as: 'new_user'
    get ':id/edit', to: 'users#edit', as: 'edit_user'
    patch ':id', to: 'users#update', as: 'update_user'
    delete ':id', to: 'users#destroy', as: 'delete_user'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/rails/info/properties' , to: "rails/info#properties"
  get '/rails/info/routes'     , to: "rails/info#routes"
  get '/rails/info'            , to: "rails/info#index"
  get '/'                      , to: "rails/welcome#index"

end