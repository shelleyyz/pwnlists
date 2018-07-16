class PagesController < ApplicationController
  def home
    # redirect_to user_path(@current_user) if @current_user.present? use this if you want everything to redirect to edit profile while user is logged in
  end
end
