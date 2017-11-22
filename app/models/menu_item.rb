class MenuItem < ApplicationRecord
	belongs_to :destination

	validates :name, presence: true
	validates :category, presence: true
	validates :price, presence: true, numericality: true

end
