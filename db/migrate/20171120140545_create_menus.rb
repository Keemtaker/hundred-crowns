class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.references :menu_item, foreign_key: true
      t.references :destination, foreign_key: true

      t.timestamps
    end
  end
end
