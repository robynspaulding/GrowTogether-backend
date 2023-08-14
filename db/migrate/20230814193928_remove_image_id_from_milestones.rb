class RemoveImageIdFromMilestones < ActiveRecord::Migration[7.0]
  def change
    remove_column :milestones, :image_id, :integer
  end
end
