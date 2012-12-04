class GalleriesController < ApplicationController
  load_and_authorize_resource
  respond_to :html

  def show
    respond_with(@gallery)
  end

  def new
    respond_with(@gallery)
  end

  def create
    @gallery.save
    respond_with(@gallery)
  end

  def edit
    respond_with(@gallery)
  end

  def update
    @gallery.save
    respond_with(@gallery)
  end
end