class AddContentUrlToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :content_url, :string
  end
end
