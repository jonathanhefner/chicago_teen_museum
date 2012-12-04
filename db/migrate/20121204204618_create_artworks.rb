class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.text :description
      t.belongs_to :user

      t.timestamps
    end
    add_index :artworks, :user_id
  end
end
