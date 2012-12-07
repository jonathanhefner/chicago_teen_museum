class User < ActiveRecord::Base
  include Clearance::User

  ADMIN_ROLE = 'admin'

  attr_accessible :name, :birthday, :biography

  def admin?
    self.role == ADMIN_ROLE
  end

  def display_name
    @display_name ||= name || "Anonymous (#{id})"
  end
end
