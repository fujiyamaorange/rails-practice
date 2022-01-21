Rails.application.routes.draw do
  get '/' => 'home#top'
  
  get 'home/top'
  # [controller#action]
  # get 'home/top' => 'home#top'

  get 'top' => 'home#top'
  get 'home/about' => 'home#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
