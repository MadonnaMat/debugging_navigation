class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.references :driver, index: true, foreign_key: true
      t.references :car, index: true, foreign_key: true
      t.datetime :start
      t.datetime :ended
      t.datetime :end_by
      t.integer :late_fee

      t.timestamps null: false
    end
  end
end
