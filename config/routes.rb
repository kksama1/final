Rails.application.routes.draw do
  #get 'users/show'
  devise_for :users
  resources :users
  get 'page/home'
  root 'page#home'
  get 'page/show_master'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
