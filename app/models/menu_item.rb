class MenuItem < ApplicationRecord
	belongs_to :destination

	validates :name, presence: true, uniqueness: { scope: :menu_id }
	validates :category, presence: true
	validates :price, presence: true, numericality: { only_integer: true }

end
