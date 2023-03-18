class HomeController < ApplicationController

  def top
  end

  def edit
    'home/edit'
   
    
   end 

   def update
    @user = User.find(params[:id])
    if @user.update(params.require(:home).permit(:name,  :introduction))
      flash[:notice] = "ユーザーIDが「#{@user.id}」の情報を更新しました"
      redirect_to :users
    else
      render "edit"
    end
  end


end
