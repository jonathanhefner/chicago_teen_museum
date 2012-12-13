class User < ActiveRecord::Base
  include Clearance::User

  ADMIN_ROLE = 'admin'

  has_many :artworks, order: 'created_at DESC'

  attr_accessible :email, :name, :biography, :birthday

  def admin?
    self.role == ADMIN_ROLE
  end

  def display_name
    @display_name ||= name || "Anonymous (#{id})"
  end
end
