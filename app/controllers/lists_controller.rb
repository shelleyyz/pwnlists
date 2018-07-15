class ListsController < ApplicationController
  before_action :check_for_login, :only => [:new, :create]

  def new
    @list = List.new
  end

  def create
    # mixtape = Mixtape.create mixtape_params
    # @current_user.mixtapes << mixtape
    list = @current_user.lists.create list_params
    redirect_to root_path
  end

  private
  def list_params
    params.require(:list).permit(:title)
  end
end

end
