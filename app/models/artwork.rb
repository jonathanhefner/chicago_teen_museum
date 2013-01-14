class Artwork < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :galleries

  has_attached_file :asset, styles: { thumb: '275' }
  before_post_process :image?

  validates :title, presence: true
  validates_attachment :asset, presence: true, size: { in: 0..3.megabytes }

  attr_accessible :title, :asset, :description

  scope :in_gallery, lambda {|gallery_id|
    gallery_id = gallery_id.id if gallery_id.is_a?(Gallery)
    joins(:galleries).where('artworks_galleries.gallery_id' => gallery_id)
  }

  def image?
    asset_content_type.starts_with?('image')
  end

  def thumb_url
    asset.url(:thumb)
  end
end
