class Gallery < ActiveRecord::Base
  has_and_belongs_to_many :artworks

  attr_accessible :title, :description
end
