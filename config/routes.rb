Rails.application.routes.draw do
  devise_for :users
  resources :dsls
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"   
  delete  '/posts/:id/delete' => 'posts#destroy'
end
