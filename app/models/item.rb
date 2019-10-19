class Item < ApplicationRecord
  belongs_to :game
  accepts_nested_attributes_for :game
end
