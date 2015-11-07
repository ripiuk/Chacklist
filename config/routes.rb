Rails.application.routes.draw do  
  get 'information/info'

  devise_for :users
  resources :items do
    member do 
      patch :complete
    end
  end
  root 'items#index'
end
