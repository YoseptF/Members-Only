class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user&.authenticate(params[:session][:password])
      log_in @user
      flash[:success] = 'successfylly logged in'
      redirect_to root_path
    else
      flash[:danger] = 'the email/password pair was incorrect'
      render 'new'
    end
  end

  def destroy; end
end
