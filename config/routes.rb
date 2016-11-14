Rails.application.routes.draw do

  resources :accounts
  resources :users do
    resources :accounts
end
  root 'welcome#index'


end
