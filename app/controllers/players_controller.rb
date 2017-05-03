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
  if params[:team_id]
  @team = Team.find(params[:team_id])
  end
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

def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_path
  end

def add_membership
    @player = Player.find(params[:id])
    @team = Team.find(params[:team_id])
    @player.memberships.create!(team: @team)
    redirect_to team_path(@team)
  end

def remove_membership
  @team = Team.find(params[:team_id])
  @player = Player.find(params[:id])
  @membership = Membership.find_by(player: @player)
  @membership.destroy
  redirect_to team_path(@team)
end

private

def player_params
  params.require(:player).permit(:name, :age, :position, :img_url)
end

end
