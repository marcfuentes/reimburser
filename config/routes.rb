Reimburser::Application.routes.draw do
  resources :employees


  resources :reimbursements


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "reimbursements#index"
  devise_for :users
  resources :users
end