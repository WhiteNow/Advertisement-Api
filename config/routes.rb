Rails.application.routes.draw do

  resources :companies do 
    resources :adds
  end
  resources :adds

end
