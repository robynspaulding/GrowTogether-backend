class ChangeLinkToImageInPhotos < ActiveRecord::Migration[7.0]
  def change
    rename_column :photos, :link, :image
  end
end
