class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :date
      t.string :stadium
      t.references :tournament, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
