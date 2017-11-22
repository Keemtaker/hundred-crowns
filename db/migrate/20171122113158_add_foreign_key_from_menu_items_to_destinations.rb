class AddForeignKeyFromMenuItemsToDestinations < ActiveRecord::Migration[5.0]
  def change
  	add_column :menu_items, :destination_id, :integer
  	add_foreign_key :menu_items, :destinations
  end
end
