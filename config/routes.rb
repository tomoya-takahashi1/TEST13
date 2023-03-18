Rails.application.routes.draw do
  
  get 'home/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  

  devise_scope :users do
    get '/users', to: redirect("/users/sign_up")
  end

  

  resources :users

  #アカウント編集画面用
  get 'home/edit'

  post 'users/edit' => 'users#updete'
  
end
