Rails.application.routes.draw do
  root "pages#home"

  resources :articles

  resources :categories, except: [:destroy]
end
