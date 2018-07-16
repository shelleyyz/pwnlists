class ListsController < ApplicationController
  before_action :check_for_login, :only => [:new, :create]

  def index
    @lists = List.all
  end

  def show
    @list = List.find params[:id]
  end

  def new
    @list = List.new
  end

  def create
    list = @current_user.lists.create list_params
    redirect_to lists_path
  end

  def edit
    @list = List.find params[:id]
  end

  def update
    list = List.find params[:id]
    list.update list_params
    redirect_to list_path
  end

  def destroy
    list = List.find params[:id]
    list.destroy
    redirect_to lists_path
  end

  private
  def list_params
    params.require(:list).permit(:name, :description, :game_ids => [])
  end
end
