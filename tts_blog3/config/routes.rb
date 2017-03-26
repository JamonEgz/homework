Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :blog_posts

  root 'blog_posts#index'
  get 'user_page' => 'blog_posts#user_page'
  get 'user_page' => 'blog_posts#user_page'
  get 'your_posts' => 'blog_posts#your_posts'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
