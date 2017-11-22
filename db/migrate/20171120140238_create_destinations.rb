class CreateDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :address
      t.string :category
      t.integer :open_hours
      t.integer :close_hours
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
