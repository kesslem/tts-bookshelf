Rails.application.routes.draw do
  root 'welcome#index'

  get '/welcome' => "welcome#index"

  resources :book
  resources :author
end
