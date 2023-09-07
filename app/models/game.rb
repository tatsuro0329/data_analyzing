class Game < ApplicationRecord

  validates :name, :date, :vs, :stadium, presence: true

  has_many :atbats

end
