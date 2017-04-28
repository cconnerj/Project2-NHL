class PlayersController < ApplicationController

def index
  @players= Player.all
end

def show
  @player = Player.find(params[:id])
end

def new
  @player = Player.new
end

def create
  @player = Player.create (player_params)
  redirect_to @player
end

private

def player_params
  params.require(:player).permit(:name, :age, :position, :img_url)
end

end
