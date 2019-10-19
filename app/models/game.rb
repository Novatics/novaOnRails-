class Game < ApplicationRecord
    has_many :player
    belongs_to :item
end
