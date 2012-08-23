Samurai::Application.routes.draw do
  resources :posts do
    resources :comments
  end

  get "home/index"

  resources :articles

  root :to => 'home#index'
end
