class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:index, :new, :create]

  def index
  end

  def new
  end

  def create
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