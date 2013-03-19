class AddIndexGalleriesTitle < ActiveRecord::Migration
  def change
    add_index :galleries, :title
  end
end
