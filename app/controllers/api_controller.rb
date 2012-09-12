class ApiController < ApplicationController
  respond_to :json

  def index
    @device_info =  DeviceInfo.all
    render :json => @device_info
  end

  def create
    @device_info = DeviceInfo.find_by_device_id(params[:device_id])
    @device_info = DeviceInfo.create(:device_id => params[:device_id], :device_name => params[:device_name], :qr_code => params[:qr_code]) if @device_info.nil?
    if @device_info.valid?
      user = User.authenticate(params[:username],params[:password])
      if user.nil?
        render :json => { :success => false, :errors => "user not available"}
      else
        Borrower.create(:user_id => user.id, :device_info_id => @device_info.id, :date => params[:date], :time => params[:time])
        render :json => { :success => true, :message => "#{@device_info.device_name} has received #{user.username} "}
      end
    else
      render :json => { :success => false, :errors => @device_info.errors}
    end
  end

end
