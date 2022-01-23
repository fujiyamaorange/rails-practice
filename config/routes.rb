Rails.application.routes.draw do
  get 'users/index'
  get 'users/signup' => 'users#new'
  get 'users/:id'=> 'users#show'
  get 'users/:id/edit' => 'users#edit'
  post 'users/:id/update' => 'users#update'
  get 'posts/index'
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
  get 'home/about' => 'home#about'

  post 'posts/create' => 'posts#create'

  post 'users/create' => 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
