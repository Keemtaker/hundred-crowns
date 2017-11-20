class MenuItem < ApplicationRecord
belongs_to :menu

validates :name, presence: true, uniqueness: { scope: :menu_id }
validates :type, presence: true
validates :price, presence: true, numericality: { only_integer: true }

end
