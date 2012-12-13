class UsersController < Clearance::UsersController
  load_and_authorize_resource except: [:new, :create]
  authorize_resource only: [:new, :create]
  respond_to :html

  def update
    @user.update_attributes(params[:user])
    @user.save
    respond_with(@user)
  end
end