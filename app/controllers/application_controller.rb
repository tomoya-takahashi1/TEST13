class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

   def edit
    @user = User.find(params[:id])

   end
  
    def after_sign_in_path_for(resource)
        home_top_path
    end    
    protected
  
    # 入力フォームからアカウント名情報をDBに保存するために追加
    def configure_permitted_parameters
        added_attrs = [ :name, :email, :password, ]
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])

    
    end
end
