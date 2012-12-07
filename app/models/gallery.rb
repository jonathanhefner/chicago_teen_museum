class Gallery < ActiveRecord::Base
  has_and_belongs_to_many :artworks

  validates :title, presence: true

  attr_accessible :title, :description

  def thumb_url
    @thumb_url ||= artworks.last.try(:thumb_url) || 'thumb_placeholder.png'
  end
end
