class CommentsController < ApplicationController
  load_and_authorize_resource
  respond_to :html

  def create
    @comment.user = current_user
    @comment.save
    redirect_to artwork_path(@comment.artwork_id)
  end
end
