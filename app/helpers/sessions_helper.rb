module SessionsHelper
      def login(user)
         session[:user_id] = user.id
      end
      
       def current_user
            if session[:user_id]
              User.find(session[:user_id])
            #else
             #   redirect_to singup_path
            end
       end
       
           
        def logged_in?
          !current_user.nil?
        end
end
