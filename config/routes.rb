Rails.application.routes.draw do
  root 'welcome#new'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'signup'  => 'users#new'
  resources :users

  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :chatrooms, param: :slug
  resources :messages

  mount ActionCable.server => '/cable'

end
