Rails.application.routes.draw do
  resources :users do
    resources :expertises
  end
  resources :users do
    resources :goals
  end
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
