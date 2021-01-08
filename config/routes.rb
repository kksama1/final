Rails.application.routes.draw do
  #get 'comments/create'
  #get 'users/show'
  scope "(:locale)",locale: /#{I18n.available_locales.join("|")}/ do
   devise_for :users
   resources :users do
     post 'comments', to: 'comments#create'
   end
   get 'page/home'
   root 'page#home' 
   get 'page/show_master'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
