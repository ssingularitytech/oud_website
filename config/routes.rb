Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "landings#index"
  resources :news
  resources :upcoming_events
  resources :projects
  resources :videos
  resources :press
  resources :musics
  resources :new_releases
  resources :photos
  resources :aboutus, path: 'about'
  resources :pressquoute
  
  get  '/test', to: 'landings#test'   
  

  get  '/subscribes', to: 'subscribes#new',    as: 'subscribes'
  post '/subscribes', to: 'subscribes#create'


  get  '/contacts', to: 'contacts#new',    as: 'contacts'
  post '/contacts', to: 'contacts#create'
end
