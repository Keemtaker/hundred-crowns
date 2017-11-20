class Destination < ApplicationRecord
  has_many :menus
  has_many :menu_items

  validates :name, presence: true
  validates :address, presence: true
  validates :type, presence: true
  validates :open_hours, presence: true, numericality: {only_integer: true}
  validates :close_hours, presence: true, numericality: {only_integer: true}

end
