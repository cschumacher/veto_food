class StaticPagesController < ApplicationController
	def index
	end

  def home
  	@game = Game.search(params[:search])
  end

  def help
  end

  def about
  end
end
