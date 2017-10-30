class UsersController < ApplicationController
  before_action :require_logged_out, only: [:new, :create]
  before_action :require_logged_in, only: [:show]

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in_user!(@user)
    else
      flash[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def show
    if current_user
      render :show
    else
      redirect_to new_session_url
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
