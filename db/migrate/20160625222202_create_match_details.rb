class CreateMatchDetails < ActiveRecord::Migration
  def change
    create_table :match_details do |t|
      t.integer :goals
      t.string :referee
      t.boolean :time_extra
      t.integer :goals_pk
      t.references :match, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
