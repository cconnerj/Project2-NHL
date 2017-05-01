class PlayersController < ApplicationController

def index
  if (params[:team_id])
    @team= Team.find(params[:team_id])
    @players= Player.all
  else
    @players= Player.all
end
end

def show
  @player = Player.find(params[:id])
  @playerid = @player.id
end

def new
  @player = Player.new
end

def create
  @player = Player.create (player_params)
  redirect_to @player
end

def edit
  @player = Player.find(params[:id])
end

def update
  @player = Player.find(params[:id])
  @playerid = @player.id
  redirect_to @player
end

def add_membership
    @player = Player.find(params[:id])
    @team = Team.find(params[:team_id])
    @player.memberships.create!
    redirect_to :back
  end

private

def player_params
  params.require(:player).permit(:name, :age, :position, :img_url)
end

end
