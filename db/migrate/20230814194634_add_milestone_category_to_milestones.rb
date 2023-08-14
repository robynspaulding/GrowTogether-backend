class AddMilestoneCategoryToMilestones < ActiveRecord::Migration[7.0]
  def change
    add_column :milestones, :milestone_category, :string
  end
end
