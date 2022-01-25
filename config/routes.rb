Rails.application.routes.draw do
  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'
  get 'users/index'
  get 'signup' => 'users#new'
  get 'users/:id'=> 'users#show'
  get 'users/:id/edit' => 'users#edit'
  post 'users/:id/update' => 'users#update'
  get 'users/:id/likes' => 'users#likes'
  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  get 'posts/:id' => 'posts#show'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/:id/delete' => 'posts#delete'

  get '/' => 'home#top'
  
  get 'home/top'
  # [controller#action]
  # get 'home/top' => 'home#top'

  get 'top' => 'home#top'
  get 'about' => 'home#about'

  post 'posts/create' => 'posts#create'

  post 'users/create' => 'users#create'

  post 'likes/:post_id/create' => 'likes#create'
  post 'likes/:post_id/delete' => 'likes#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
