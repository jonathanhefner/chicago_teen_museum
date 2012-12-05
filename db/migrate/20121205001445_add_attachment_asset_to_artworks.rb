class AddAttachmentAssetToArtworks < ActiveRecord::Migration
  def self.up
    change_table :artworks do |t|
      t.has_attached_file :asset
    end
  end

  def self.down
    drop_attached_file :artworks, :asset
  end
end
