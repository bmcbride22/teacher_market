class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def purchase_history; end
end
