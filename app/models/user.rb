class User < ActiveRecord::Base
  include Clearance::User

  DEFAULT_TYPE = 'regular'
  ADMIN_TYPE = 'admin'

  attr_accessible :name, :birthday, :biography

  def admin?
    self.type == ADMIN_TYPE
  end
end
