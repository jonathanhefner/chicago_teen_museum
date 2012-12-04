class ArtworksController < ApplicationController
  load_and_authorize_resource
  respond_to :html

  def show
    respond_with(@artwork)
  end

  def new
    respond_with(@artwork)
  end

  def create
    @artwork.save
    respond_with(@artwork)
  end

  def edit
    respond_with(@artwork)
  end

  def update
    @artwork.save
    respond_with(@artwork)
  end
end