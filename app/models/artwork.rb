class Artwork < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :galleries

  has_attached_file :asset, styles: { thumb: '300' }
  before_post_process :image?

  validates :title, presence: true
  validates_attachment :asset, presence: true, size: { in: 0..3.megabytes }

  attr_accessible :title, :asset, :description

  def image?
    asset_content_type.starts_with?('image')
  end

  def thumb_url
    asset.url(:thumb)
  end
end
