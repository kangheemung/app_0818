class ApplicationController < ActionController::Base
    include SessionsHelper
    def login(user)
     session[:user_id] = @user.id
    end
    def set_current_user
     @current_user =User.find_by(id: session[user:id])
    end
end
