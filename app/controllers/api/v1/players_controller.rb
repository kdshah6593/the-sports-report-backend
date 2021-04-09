class Api::V1::PlayersController < ApplicationController
  before_action :current_user

  # GET /players
  def index
    @players = Player.all
    render json: PlayerSerializer.new(@players)
  end

  # GET /players/1
  def show
    render json: @player
  end

  # POST /players #this should use the current user build association to make new players
  def create
    player = Player.find_or_create_by(sportsDBId: player_params["sportsDBId"])
    player.update(player_params) # this will update any players find with new information from the api if team switched
    current_user.players.push(player)
    render json: UserSerializer.new(current_user)
  end

  def destroy
    player = Player.find_by(sportsDBId: player_params["sportsDBId"])
    current_user.players.delete(player)
    render json: UserSerializer.new(current_user)
  end

  private
    # Only allow a list of trusted parameters through.
    def player_params
      params.require(:player).permit(:name, :sport, :team, :sportsDBId)
    end
end
