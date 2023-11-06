class ChangePhotoTable < ActiveRecord::Migration[7.0]
  def change
    change_column :photos, :child_id, :integer, null: true
    change_column :photos, :milestone_id, :integer, null: true
  end
end
