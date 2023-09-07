class CreateAtbats < ActiveRecord::Migration[7.0]
  def change
    create_table :atbats do |t|
      t.references :game           , null: false, foreign_key: true
      t.integer    :turn_number    , null: false
      t.integer    :outcount_id    , null: false
      t.integer    :runner_id      , null: false
      t.integer    :position_id
      t.integer    :batting_id     , null: false
      t.integer    :pitchtype_id   , null: false
      t.integer    :pitchcourse_id , null: false
      t.timestamps
    end
  end
end