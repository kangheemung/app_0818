class UsersController < ApplicationController
  def new
    @user= User.new
  end

  def create
   user=User.new(user_params)
    if user.save
      login(user)
      redirect_to root_path
    else
      render :new
    end  


  end
  def show 
   @user = User.find( parmas[:id])
  end
  
  def mypage
    @user = User.find(session[:user_id])
  end
  
  private
    def user_params
        params.require(:user).permit(:name, :email,:password,:password_confirmation)
    end
end
