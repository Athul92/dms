class Api::Web::RegistrationsController < ApplicationController
  respond_to :json

  def create
    @user = User.new
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.role = "Guest"
    if @user.save
      @profile = Profile.new
      @profile.user_id = @user.id
      @profile.update_attributes(params[:profile])
      render json: {
          user_name: @user.email
      }
    end
  end
end