class CreateArtworksGalleries < ActiveRecord::Migration
  def up
    create_table :artworks_galleries, id: false do |t|
      t.references :artwork
      t.references :gallery
    end
    add_index :artworks_galleries, [:artwork_id, :gallery_id]
  end

  def down
    drop_table :artworks_galleries
  end
end
