class CreateCrimes < ActiveRecord::Migration[6.0]
  def change
    create_table :crimes do |t|
      t.string :title
      t.string :labels
      t.string :place
      t.string :description

      t.timestamps
    end
  end
end
