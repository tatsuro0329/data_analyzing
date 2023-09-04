class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.date   :date    , null: false
      t.string :vs      , null: false
      t.string :stadium , null: false
      t.timestamps
    end
  end
end
