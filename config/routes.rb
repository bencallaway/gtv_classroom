Gtvclass::Application.routes.draw do
  resources :lessons
  resources :flags
  match '/flags', :to => 'flags#reset', :via => :delete
  root :to => 'lessons#show'
end
