class Game < ApplicationRecord

  validates :date, :vs, :stadium, presence: true

  has_many :at_bats

end
