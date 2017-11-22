class RenamingTypesToCategories < ActiveRecord::Migration[5.0]
  def change
  	remove_column :destinations, :type
  	add_column :destinations, :category, :string
  	remove_column :menu_items, :type
  	add_column :menu_items, :category, :string
  end
end
