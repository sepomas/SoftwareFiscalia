class CreateThiefs < ActiveRecord::Migration[6.0]
  def change
    create_table :thiefs do |t|
      t.string :name
      t.string :rut
      t.string :tags
      t.string :alias_list

      t.timestamps
    end
  end
end
