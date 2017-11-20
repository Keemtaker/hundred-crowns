class Menu < ApplicationRecord
  belongs_to :menu_item
  belongs_to :destination
end
