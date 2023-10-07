class ChangeUrlToLinkInFavoritesTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :favorites, :url, :link
  end
end
