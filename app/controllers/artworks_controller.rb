class ArtworksController < ApplicationController
  load_and_authorize_resource
  respond_to :html

  def index
    @artworks = @artworks.includes(:user).page(params[:page])
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