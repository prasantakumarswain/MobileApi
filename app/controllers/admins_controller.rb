class AdminsController < ApplicationController
  before_filter :should_be_login

  def index

  end

  def device_info
    @device = DeviceInfo.all
  end

  def add_user
  end
  def create
    token = rand(12321312..8987678787)
    @user = User.create(:email => params[:email], :token => token)
    if @user.valid?
      UserMailer.set_password(@user).deliver
      redirect_to admins_path, :notice => "User added successfully!!!"
    else
      render :add_user
    end
  end
end
