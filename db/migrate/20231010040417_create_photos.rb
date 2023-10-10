class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.integer :child_id
      t.integer :milestone_id
      t.string :link
      t.string :description
      t.string :data

      t.timestamps
    end
  end
end
