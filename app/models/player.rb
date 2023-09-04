class Player < ApplicationRecord

  validates :name, presence: true
  
  has_many :at_bats

end
