Rails.application.routes.draw do

  namespace :admin do
    resources :clients
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

end
