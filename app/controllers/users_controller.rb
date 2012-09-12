class UsersController < ApplicationController
  def set_password
    @user = User.find_by_token(params[:id])
    if !@user
      redirect_to root_path
    end
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(:password => params[:user][:password], :username => params[:user][:username], :token => "")
      redirect_to root_path
    end
  end
end
