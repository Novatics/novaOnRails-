class Game < ApplicationRecord
    has_many :player
    has_many :item
end
