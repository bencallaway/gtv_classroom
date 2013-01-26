Gtvclass::Application.routes.draw do
  resources :lessons
  resources :flags
  root :to => 'lessons#show'
end
