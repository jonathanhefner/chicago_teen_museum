class Artwork < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :galleries

  attr_accessible :title, :description
end
