Rails.application.routes.draw do
  
  root to: "home#index"
  get 'listini', to: 'listini#index', as: 'listini'
  get 'clienti', to: 'clienti#index', as: 'clienti'
  get 'ordini', to: 'ordini#index', as: 'ordini'
  get 'stats', to: 'stats#index', as: 'stats'
  delete 'logout', to: 'sessions#destroy'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/rails/info/properties' , to: "rails/info#properties"
  get '/rails/info/routes'     , to: "rails/info#routes"
  get '/rails/info'            , to: "rails/info#index"
  get '/'                      , to: "rails/welcome#index"

end