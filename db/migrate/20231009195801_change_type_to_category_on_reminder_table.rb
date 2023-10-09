class ChangeTypeToCategoryOnReminderTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :reminders, :type, :category
  end
end
