class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find params[:id]
  end

  def new
    @game = Game.new
  end

  def create
    game = @current_user.games.create game_params
    redirect_to games_path
  end

  def edit
    @game = Game.find params[:id]

  end

  def update
    game = Game.find params[:id]
    game.update game_params
    redirect_to games_path
  end

  def destroy
    before_action :check_for_admin
    game = Game.find params[:id]
    game.destroy
    redirect_to games_path
  end

  private
  def game_params
    params.require(:game).permit(:title, :genre, :developer, :image)
  end
end
