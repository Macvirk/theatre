Rails.application.routes.draw do
  #resources :movies
  #resources :genres
  resources :actors

  resources :movies do
    resources :genres
    #resources :actors
  end 
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
