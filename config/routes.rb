Rails.application.routes.draw do
  scope "(:locale)",locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :users
    resources :users do
      post 'comments', to: 'comments#create'
    end
    get 'page/home'
    root 'page#home' 
    get 'page/show_master'
  end
end
