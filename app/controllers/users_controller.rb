class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?, only: [:index, :show, :edit, :update, :destroy]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
    @date = @user.created_at.strftime("%b %d, %Y")
  end

  # GET /users/new
  def new
    # @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  def create
    @user = User.create(user_params)
    login(@user)
    redirect_to user_path(@user)
  end

  # PATCH/PUT /users/1
  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to user_path(@user)
  end

  # DELETE /users/1
  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      user_params = params.require(:user).permit(:first_name, :last_name, :current_city, :profile_photo, :email, :password)
    end
end
