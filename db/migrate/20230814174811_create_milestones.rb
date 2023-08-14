class CreateMilestones < ActiveRecord::Migration[7.0]
  def change
    create_table :milestones do |t|
      t.integer :image_id
      t.integer :milestone_category
      t.string :title
      t.string :date
      t.text :description

      t.timestamps
    end
  end
end
