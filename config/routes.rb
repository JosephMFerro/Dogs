Rails.application.routes.draw do
  root "dogs#index"

  resources :dogs do
    resources :posts
  end
end
