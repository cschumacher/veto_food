class GamesController < ApplicationController
  def index
  end

  def new
  	@game = Game.new
  end

  def search
    if params[:search]
      @game = Game.search(params[:search])
      print "What the hell?"
    else 
      redirect_to new_path and return
    end
    redirect_to enter_path(@game)
  end

  def create
  	@game = Game.new(game_params)
    if @game.save
  		render 'existing'
  	else
  		render 'new'
  	end
  end

  def show
    @game = Game.find(params[:ref_id])
  end

  def existing
    @game
  end

  def create_game_ref_id
    @ref_id = SecureRandom.hex(6)
  end

  private
  	def game_params
  		params.require(:game).permit(:curr_suggestion, :time, :ref_id)
  	end
end
