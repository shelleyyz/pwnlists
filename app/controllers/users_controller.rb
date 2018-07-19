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
    if params["user"]["image"]
      cloudinary = Cloudinary::Uploader.upload( params[ "user" ][ "image" ] )
      @user.image = cloudinary["url"]
    end
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path # Redirect to home if the account is valid
    else
      render :new # Let them retry the form again
    end
  end

  def show
    @user = User.find params[:id]
    results = Geocoder.search("#{@user.country}")
    coordinates = results.first.coordinates
    @latitude = coordinates.first
    @longitude = coordinates.last
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]

    if params["user"]["country"]
      results = Geocoder.search("#{@user.country}")
      coordinates = results.first.coordinates
      @latitude = coordinates.first
      @longitude = coordinates.last

    end

    @user.update user_params

    if params["user"]["image"]
      cloudinary = Cloudinary::Uploader.upload( params[ "user" ][ "image" ] )
      @user.image = cloudinary["url"]
    end
    @user.save

    redirect_to @user
  end

  def destroy
  user = User.find params[:id]
  user.destroy
  redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :email, :bio, :country)
  end
end
