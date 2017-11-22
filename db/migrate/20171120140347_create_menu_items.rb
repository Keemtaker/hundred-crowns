class CreateMenuItems < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :category
      t.float :price
      t.references :destination

      t.timestamps
    end
  end
end
