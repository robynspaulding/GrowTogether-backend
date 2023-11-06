class RemoveColumsFromPhotos < ActiveRecord::Migration[7.0]
  def change
    remove_column :photos, :child_id, :integer
    remove_column :photos, :milestone_id, :integer
  end
end
