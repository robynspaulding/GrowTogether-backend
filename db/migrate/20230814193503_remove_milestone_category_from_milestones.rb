class RemoveMilestoneCategoryFromMilestones < ActiveRecord::Migration[7.0]
  def change
    remove_column :milestones, :milestone_category, :integer
  end
end
