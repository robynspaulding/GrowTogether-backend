class ChangeDateTypeOnRemindersTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :reminders, :datetime, :string
    add_column :reminders, :date, :datetime
  end
end
