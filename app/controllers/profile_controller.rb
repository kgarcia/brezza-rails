class ProfileController < ApplicationController
  before_action :set_meta
  layout "admin"
  
  def index
    @users = User.all
  end

  def details
    @users = User.find(params[:id])
  end
end
