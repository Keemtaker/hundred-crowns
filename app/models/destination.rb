class Destination < ApplicationRecord
  has_many :menu_items, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_attachment :photo

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :open_hours, presence: true, numericality: {only_integer: true}
  validates :close_hours, presence: true, numericality: {only_integer: true}

  def filtered_menu_items(categories, price)
    categories.map do |category|
  	  self.menu_items.
      where('category = (?)', category).
      where('price <= (?)', price).
      order(:price).first
    end.compact
  end
end
