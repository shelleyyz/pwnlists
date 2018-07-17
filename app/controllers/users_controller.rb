class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]


  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path # Redirect to home if the account is valid
    else
      render :new # Let them retry the form again
    end
  end

  def show
    @user = User.find params[:id]
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    cloudinary = Cloudinary::Uploader.upload( params[ "user" ][ "image" ] )
    user.update user_params
    user.update :image => cloudinary["url"]
    redirect_to user
  end

  def destroy
  user = User.find params[:id]
  user.destroy
  redirect_to login_path
end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :email, :bio, :country, :image)
  end
end
