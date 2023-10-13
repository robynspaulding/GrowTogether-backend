class ChangeDateColumnInReminders < ActiveRecord::Migration[7.0]
  def change
    remove_column :reminders, :time, :string
    rename_column :reminders, :date, :datetime
  end
end
