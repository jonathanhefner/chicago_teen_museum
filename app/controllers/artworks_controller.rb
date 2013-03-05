class ArtworksController < ApplicationController
  load_and_authorize_resource
  respond_to :html

  def index
    @artworks = @artworks.includes(:comments => :user).page(params[:page])

    if params[:user]
      @artworks = @artworks.where(user_id: params[:user])
      @user = User.find(params[:user])
    end

    if params[:gallery]
      @artworks = @artworks.in_gallery(params[:gallery])
      @gallery = Gallery.find(params[:gallery])
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