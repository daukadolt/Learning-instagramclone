class RelationshipsController < ApplicationController
  def create
    current_user.follow(params[:user_id])
    respond_to do |format|
      format.js 
  end

  def destroy
  end
end
