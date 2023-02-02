Rails.application.routes.draw do
  resources :music
  mount Vgm::Api => '/'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
