class CreateChildren < ActiveRecord::Migration[7.0]
  def change
    create_table :children do |t|
      t.integer :user_id
      t.integer :milestone_category
      t.string :name
      t.string :dob
      t.string :profile_image

      t.timestamps
    end
  end
end
