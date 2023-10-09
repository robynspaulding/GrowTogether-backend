class AddDataAndTimeToRemindersTable < ActiveRecord::Migration[7.0]
  def change
    add_column :reminders, :date, :string
    add_column :reminders, :time, :string
  end
end
