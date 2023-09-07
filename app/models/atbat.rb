class Atbat < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  validates :turn_number, :outcount_id, :runner_id, :batting_id, :pitchtype_id, :pitchcourse_id, presence: true
  validates :outcount_id, :runner_id, :batting_id, :pitchtype_id, :pitchcourse_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :turn_number, numericality: { only_integer: true, message: "は半角数字のみ使用してください" }

  validate :ensure_fields_are_blank_when_turn_number_is_blank

  private

  def ensure_fields_are_blank_when_turn_number_is_blank
    if turn_number.blank?
      %i[outcount_id runner_id batting_id pitchtype_id pitchcourse_id].each do |field|
        errors.add(field, "must be blank when turn number is blank") unless self.send(field).blank?
      end
    end
  end
  
  belongs_to :game
  belongs_to_active_hash :outcount
  belongs_to_active_hash :runner
  belongs_to_active_hash :position
  belongs_to_active_hash :batting
  belongs_to_active_hash :pitchtype
  belongs_to_active_hash :pitchcourse

end