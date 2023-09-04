class CreateAtBats < ActiveRecord::Migration[7.0]
  def change
    create_table :at_bats do |t|
      t.references :player          , null: false, foreign_key: true
      t.references :game            , null: false, foreign_key: true
      t.integer    :turn_number     , null: false
      t.integer    :out_count_id    , null: false
      t.integer    :runner_id       , null: false
      t.integer    :position_id
      t.integer    :batting_id      , null: false
      t.integer    :pitch_type_id   , null: false
      t.integer    :pitch_course_id , null: false
      t.timestamps
    end
  end
end