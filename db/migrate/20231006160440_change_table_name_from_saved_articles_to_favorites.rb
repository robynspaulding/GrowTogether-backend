class ChangeTableNameFromSavedArticlesToFavorites < ActiveRecord::Migration[7.0]
  def change
    rename_table :saved_articles, :favorites
    add_column :favorites, :thumbnail, :string
  end
end
