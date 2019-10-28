class Player < ApplicationRecord
  belongs_to :game
  accepts_nested_attributes_for :game

  validates :nickname,
    uniqueness: { case_sensitive: false },
    presence: true,
    length: {minimum: 3, maximum: 15},
    format: { with: /\A[\w\d\_\-]*\z/i, message: "Only letters, numbers, -, _ allowed" }
end
