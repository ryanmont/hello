Rails.application.routes.draw do
  
  resources :comments
  resources :opts
  resources :cats
  get 'pages/home'

  get 'pages/other'

  resources :greets
  resources :firsts
  resources :adjectives

root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
