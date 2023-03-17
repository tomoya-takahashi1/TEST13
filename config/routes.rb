Rails.application.routes.draw do
  
  get 'home/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users

  devise_scope :users do
    get '/users', to: redirect("/users/sign_up")
  end

  def edit
    @user = User.find(params[:id])

   end
   
  

  resources :users
  get 'home/edit'

end
