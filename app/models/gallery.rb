class Gallery < ActiveRecord::Base
  default_scope order(:title)
  has_and_belongs_to_many :artworks, order: 'created_at DESC'

  validates :title, presence: true

  attr_accessible :title, :description

  def thumb_url
    @thumb_url ||= artworks.last.try(:thumb_url) || 'thumb_placeholder.png'
  end

  def to_s
    title
  end
end
