class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.string :author
      t.integer :rating
      t.references :destination, foreign_key: true

      t.timestamps
    end
  end
end
