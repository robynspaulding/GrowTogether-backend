class CreateReminders < ActiveRecord::Migration[7.0]
  def change
    create_table :reminders do |t|
      t.integer :user_id
      t.string :child_name
      t.string :type
      t.string :description
      t.text :notes

      t.timestamps
    end
  end
end
