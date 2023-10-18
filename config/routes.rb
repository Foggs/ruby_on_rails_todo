Rails.application.routes.draw do
  get 'main/index'
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "main#index"
  match "about", to:"main#about", via: :get
  match "thank-you", to:"main#thankyou", via: :get

end

