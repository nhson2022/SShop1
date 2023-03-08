Rails.application.routes.draw do
  
  root "pages#home"
  devise_for :users
  
  resources :items
  resources :categories

  resources :sales, only: %[show] do
    collection do
      get :my
    end
  end
end
