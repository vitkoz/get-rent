class CreateRental < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.integer :property_id, foreign_key: true
      t.integer :renter_id, foreign_key: true
      t.string :unit
      t.decimal :rent, precision: 8, scale: 2
    end
  end
end
