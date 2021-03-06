Rails.application.routes.draw do

  namespace :admin do
    resources :sells
    resources :products
    resources :services
    resources :discounts
    resources :campaigns
    resources :suppliers
    resources :clients
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

end
