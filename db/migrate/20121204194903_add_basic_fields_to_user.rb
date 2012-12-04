class AddBasicFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :type, :string
    add_column :users, :name, :string
    add_column :users, :birthday, :date
    add_column :users, :biography, :text
  end
end
