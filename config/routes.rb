Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "posts#index"

  resources :posts
  get('/poker', to: 'poker#show')

  # get('/posts', {to: 'posts#index'})
  # get '/posts/:id', to: 'posts#show'
  # get '/posts/cokolwiek', to: 'posts#cosinnego'
end
