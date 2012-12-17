class ArtworksController < ApplicationController
  load_and_authorize_resource
  respond_to :html

  def index
    @artworks = @artworks.includes(:user).page(params[:page])
    if params[:user]
      @artworks = @artworks.where(user_id: params[:user])
      @user = User.find(params[:user])
    end
    respond_with(@artworks)
  end

  def create
    @artwork.save
    respond_with(@artwork)
  end

  def update
    @artwork.save
    respond_with(@artwork)
  end
end