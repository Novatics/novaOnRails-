class Game < ApplicationRecord
    has_many :players

    validates :satellites, presence: true
end
