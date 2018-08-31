Rails.application.routes.draw do
  root 'posts#index'

  resources :posts do
    get :search, on: :collection
  end

  resources :comments, only: %i[create]
end
