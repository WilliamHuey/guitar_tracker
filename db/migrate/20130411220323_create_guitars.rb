class CreateGuitars < ActiveRecord::Migration
  def change
    create_table :guitars do |t|
      t.string :brand
      t.string :modelName
      t.integer :year
      t.string :color
      t.decimal :weight
      t.integer :frets
      t.integer :strings

      t.timestamps
    end
  end
end
