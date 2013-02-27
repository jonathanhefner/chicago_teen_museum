class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :artwork

  validates :user, presence: true
  validates :artwork, presence: true
  validates :body, presence: true

  attr_accessible :body, :artwork, :artwork_id
end
