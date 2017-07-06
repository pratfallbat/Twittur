# The pages controller contains all the code for any pages inside /pages
class PagesController < ApplicationController
  
#back-end code for pages/index
  def index
  end

#back-end code for pages/home
  def home
    @posts = Post.all
  end

#back-end code for pages/profile
  def profile
  	#grab the username
    if(User.find_by_username(params[:id]))
  	@username = params[:id]
    else
      # redirect to 404 (root for now)
      redirect_to root_path,:nottice=> "User not found!"
  end
  @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
@newPost = Post.new
  end

#back-end code for pages/explore
  def explore
    @posts = Post.all
  end

end
