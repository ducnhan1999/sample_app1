Rails.application.routes.draw do
  get 'sessions/new'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/login'
  root 'static_pages#home'
  get '/about', to: "static_pages#about"
  get '/contact', to: "static_pages#contact"
  get '/news', to: "static_pages#news"
  get '/sign_up', to: "users#new"
  get 'login', to: "sessions#new"
  post '/login',to: "sessions#create"
  get '/logout', to: "sessions#destroy"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
