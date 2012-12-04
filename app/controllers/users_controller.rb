class UsersController < Clearance::UsersController
  load_and_authorize_resource except: [:new, :create]
  authorize_resource only: [:new, :create]
  respond_to :html

  def show
    respond_with(@user)
  end

  def edit
    respond_with(@user)
  end

  def update
    respond_with(@user)
  end
end