class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    render json: UserSerializer.new(@users)
  end

  def show
    user = User.find_by(id: params[:id])
    render json: UserSerializer.new(@user)
  end

  def create
    @user = User.create(user_params)
    
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: {errors: @user.errors.full_messages}, status: :not_acceptable
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :password, :email, :first_name, :last_name)
    end
end
