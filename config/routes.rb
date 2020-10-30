Rails.application.routes.draw do
  devise_for :users
  resources :books do
    resources :comments
  end
  
  root 'welcome#index'
end
