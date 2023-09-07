class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to new_atbat_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  
  def game_params
    params.require(:game).permit(:name, :date, :vs, :stadium)
  end

end