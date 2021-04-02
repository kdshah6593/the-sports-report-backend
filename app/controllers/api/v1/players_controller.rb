class Api::V1::PlayersController < ApplicationController
  # before_action will need the current user one here

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
    @player = Player.new(player_params)

    if @player.save
      render json: @player, status: :created, location: @player
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /players/1
  def update
    if @player.update(player_params)
      render json: @player
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # # DELETE /players/1
  # def destroy
  #   @player.destroy
  # end

  private
    # Only allow a list of trusted parameters through.
    def player_params
      params.require(:player).permit(:name, :sport, :team, :sportsDBId)
    end
end
