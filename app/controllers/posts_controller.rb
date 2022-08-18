class PostsController < ApplicationController
   def index
     @post = Post.new
     @user = User.find_by(id: @post.user_id)
     @posts = Post.all
   end
   

  def show
   
    @post = Post.find_by(id: params[:id])
   
  end
  
  def create
  　 @post = Post.new( post_params)
  　 #@post.user_id = current_user.id

       if @post.save
        session[:user]
    
          redirect_to'/'
    
       else
          render 'new'
       end
  end
   private
        def post_params
             params.require(:post).permit(:title, :content)
        end


end
