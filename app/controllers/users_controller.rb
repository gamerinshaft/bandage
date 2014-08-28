class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:index, :new, :create]

  def index
  end

  def new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to(:users, notice: 'User was successfully created')}
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end