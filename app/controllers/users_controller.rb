class UsersController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :set_user, only: %i[show edit update destroy]

  # GET /users
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  # GET /users/:id
  def show
    render json: @user, status: :ok
  end

  # GET /users/new
  # Displays a form for creating a new user.
  def new
    # @user = User.new
    # render json: @user, status: :ok
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to main_users_path, notice: 'User was successfully created.'
      # p @user
    else
      render :new
    end
  end

  # GET /users/:id/edit
  # render a edit page of the used with :id
  def edit
    # render json: [], status: :ok
    @user
  end

  # PATCH/PUT /users/:id
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/:id
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  # custom routes
  def main
    @user_id = 1
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:name, :email, :age)
  end
end
