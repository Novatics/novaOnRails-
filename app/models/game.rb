class Game < ApplicationRecord
    has_many :player

    validates :satellites, presence: true
end
