class RemoveMilestoneCategoryFromChildren < ActiveRecord::Migration[7.0]
  def change
    remove_column :children, :milestone_category, :integer
  end
end
