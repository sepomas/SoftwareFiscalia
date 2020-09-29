class CreateCrimeThiefs < ActiveRecord::Migration[6.0]
  def change
    create_table :crime_thiefs do |t|
      t.references :crime, null: false, foreign_key: true
      t.references :thief, null: false, foreign_key: true

      t.timestamps
    end
  end
end
