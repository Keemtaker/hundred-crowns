class Destination < ApplicationRecord
  has_many :menu_items

    geocoded_by :address
  after_validation :geocode, if: :address_changed?


  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :open_hours, presence: true, numericality: {only_integer: true}
  validates :close_hours, presence: true, numericality: {only_integer: true}

end
