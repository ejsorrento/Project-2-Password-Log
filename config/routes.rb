Rails.application.routes.draw do
  resources :users do
    resources :accounts

  root 'welcome#index'
end

# resources :accounts
end
