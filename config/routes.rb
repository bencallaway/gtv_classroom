Gtvclass::Application.routes.draw do
  resources :flags
  root :to => 'flags#index'
end
