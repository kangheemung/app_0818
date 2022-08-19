class ApplicationController < ActionController::Base
    include SessionsHelper
    
    def set_current_user
     @current_user =User.find_by(id: session[user:id])
    end
end
