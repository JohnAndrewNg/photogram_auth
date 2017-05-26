class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])
#    @photos = Photo.where(:user_id => @user.id)

    render("users/show.html.erb")
  end

  def my_likes

    @likes = current_user.likes
#    @likes = Likes.where(:user_id => current_user.id)

    render("users/my_likes.html.erb")
  end

end
