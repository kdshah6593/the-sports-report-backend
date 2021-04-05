class Api::V1::TeamsController < ApplicationController
  before_action :current_user

  # GET /teams
  def index
    @teams = Team.all
    render json: TeamSerializer.new(@teams)
  end

  # GET /teams/1
  def show
    @team = Team.find_by(id: params[:id])
    render json: TeamSerializer.new(@team)
  end

  # POST /teams #this should use the current user build association to make new teams
  def create
    team = Team.find_or_create_by(sportsDBId: team_params["sportsDBId"])
    team.update(team_params)
    current_user.teams.push(team)
    render json: UserSerializer.new(current_user)
  end

  # # PATCH/PUT /teams/1
  # def update
  #   if @team.update(team_params)
  #     render json: @team
  #   else
  #     render json: @team.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /teams/1
  # def destroy
  #   @team.destroy
  # end

  private
    # Only allow a list of trusted parameters through.
    def team_params
      params.require(:team).permit(:name, :sport, :sportsDBId)
    end
end
