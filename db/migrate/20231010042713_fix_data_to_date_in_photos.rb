class FixDataToDateInPhotos < ActiveRecord::Migration[7.0]
  def change
    rename_column :photos, :data, :date
  end
end
