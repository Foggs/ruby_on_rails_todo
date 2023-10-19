Rails.application.routes.draw do
  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/new'
  # get 'categories/edit'
  # get 'categories/delete'
  # get 'main/index'
  resources :categories do
    member do
      get :delete
    end
  end
  
  resources :tasks do
    member do
      get :delete
    end
  end
  
  # get 'tasks/index'
  # get 'tasks/new'
  # get 'tasks/edit'
  # get 'tasks/show'
  # get 'tasks/delete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "main#index"
  match "about", to:"main#about", via: :get
  match "thank-you", to:"main#thankyou", via: :get

end

