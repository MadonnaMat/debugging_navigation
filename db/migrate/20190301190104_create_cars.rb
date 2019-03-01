class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.string :brand
      t.integer :mileage
      t.string :color

      t.timestamps null: false
    end
  end
end
