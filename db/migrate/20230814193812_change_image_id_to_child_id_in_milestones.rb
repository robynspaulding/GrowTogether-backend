class ChangeImageIdToChildIdInMilestones < ActiveRecord::Migration[7.0]
  def change
    add_column :milestones, :child_id, :integer
  end
end
