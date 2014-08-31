class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:new, :create]
  before_action :set_params
  def index
  end

  def new
  end

  def create
    @user = @group.users.build(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to(group_user_path(@group, @user), notice: 'User was successfully created')}
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

  def set_params
    @group = Group.find(params[:group_id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end