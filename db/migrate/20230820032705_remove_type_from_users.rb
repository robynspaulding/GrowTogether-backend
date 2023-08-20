class RemoveTypeFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :type, :string, default: "parent"
    add_column :users, :isParent, :boolean, default: true
  end
end
