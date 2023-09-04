class CreateAtBats < ActiveRecord::Migration[7.0]
  def change
    create_table :at_bats do |t|
      t.references :player       , null: false, foreign_key: true
      t.references :game         , null: false, foreign_key: true
      t.references :out_count    , null: false, foreign_key: true
      t.references :runner       , null: false, foreign_key: true
      t.references :position     , foreign_key: true
      t.references :batting      , null: false, foreign_key: true
      t.references :pitch_type   , null: false, foreign_key: true
      t.references :pitch_course , null: false, foreign_key: true
      t.integer    :turn_number  , null: false
      t.timestamps
    end
  end
end
