class AtBat < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  validates :player, :game, :turn_number, :out_count_id, :runner_id, :batting_id, :pitch_type_id, :pitch_course_id, presence: true
  validates :out_count_id, :runner_id, :batting_id, :pitch_type_id, :pitch_course_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :turn_number, numericality: { only_integer: true, message: "は半角数字のみ使用してください" }

  belongs_to :player
  belongs_to :game
  belongs_to_active_hash :out_count
  belongs_to_active_hash :runner
  belongs_to_active_hash :position
  belongs_to_active_hash :batting
  belongs_to_active_hash :pitch_type
  belongs_to_active_hash :pitch_course

end