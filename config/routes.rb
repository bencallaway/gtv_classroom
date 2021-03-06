Gtvclass::Application.routes.draw do
  resources :lessons
  resources :flags
  resources :flags
  resources :answers
  match '/flags', :to => 'flags#reset', :via => :delete
  match '/answers', :to => 'answers#reset', :via => :delete
  root :to => 'lessons#show'
end
