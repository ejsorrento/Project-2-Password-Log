Rails.application.routes.draw do


  resources :users do
    resources :accounts
end
resource :session

  resources :welcome

  root "/"


end
