class AddColumnsToPhotos < ActiveRecord::Migration[7.0]
  def change
    add_column :photos, :user_id, :integer, null: false, foreign_key: true, default: 1
    add_column :photos, :child_id, :integer, null: true, foreign_key: true
    add_column :photos, :milestone_id, :integer, null: true, foreign_key: true
  end
end
