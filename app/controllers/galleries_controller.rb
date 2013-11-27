class GalleriesController < ApplicationController
  load_and_authorize_resource
  respond_to :html

  def index
    # TODO eagerly load latest artworks (for thumbnails)
    @galleries = @galleries.page(params[:page])
    respond_with(@galleries)
  end

  def create
    @gallery.save
    respond_with(@gallery)
  end

  def update
    @gallery.assign_attributes(params[:gallery])
    @gallery.save
    respond_with(@gallery)
  end
end