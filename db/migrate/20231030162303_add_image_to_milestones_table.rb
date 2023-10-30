class AddImageToMilestonesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :milestones, :image, :string
  end
end
