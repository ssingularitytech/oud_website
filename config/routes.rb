Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "landing#index"
  get 'about', to: 'landing#about'
  get 'team', to: 'landing#team'
  get 'show', to: 'landing#show'
  get 'studio', to: 'landing#studio'
  get 'ticket', to: 'landing#ticket'
  get 'faq', to: 'landing#faq'
  get 'news', to: 'landing#news'
  get 'contact', to: 'landing#contact'

end
