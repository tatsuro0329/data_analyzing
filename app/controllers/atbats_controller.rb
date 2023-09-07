class AtbatsController < ApplicationController

  before_action :set_at_bat, only: [:show, :edit, :update, :destroy]

  def index
    @at_bats = Atbat.all
    @games = Game.where(id: @at_bats.map(&:game_id))
  end

  def new
    @at_bat = Atbat.new
  end

  def create
    atbats_params = params[:atbat][:at_bats]
    game_id = params[:atbat][:game_id]
  
    ActiveRecord::Base.transaction do
      atbats_params.each_value do |at_bat_params|
        Atbat.create!(at_bat_params.permit(:turn_number, :outcount_id, :runner_id, :position_id, :batting_id, :pitchtype_id, :pitchcourse_id).merge(game_id: game_id))
      end
      redirect_to root_path
    rescue ActiveRecord::RecordInvalid
      @game = Game.find(game_id)
      render :new, status: :unprocessable_entity
    end
  end
  
  

  def show
  end

  def edit
  end

  def update
    if @at_bat.update(at_bat_params)
      redirect_to root_path
    else

    end
  end

  def destroy
    @at_bat.destroy
  end

  private

  def set_at_bat
    @at_bat = Atbat.find(params[:id])
  end

  def at_bat_params
    params.require(:atbat).permit(:game_id, at_bats_attributes: [:turn_number, :outcount_id, :runner_id, :position_id, :batting_id, :pitchtype_id, :pitchcourse_id])
  end
end