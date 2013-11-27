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
    @artwork.assign_attributes(params[:artwork])
    # NOTE load_and_authorize_resource doesn't load gallery_ids during
    #  an update like it does during a create
    @artwork.save && (@artwork.gallery_ids = params[:artwork][:gallery_ids])
    respond_with(@artwork)
  end

end
