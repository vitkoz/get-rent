class CreateSuits < ActiveRecord::Migration[5.2]
  def change
    create_table :suits do |t|
      t.integer :court_id, foreign_key: true
      t.integer :renter, foreign_key: true
      t.integer :property_id, foreign_key: true
      t.decimal :rental_rate, precision: 8, scale: 2
      t.integer :paid_through
      t.decimal :rent_due, precision: 8, scale: 2
      t.decimal :other, precision: 8, scale: 2
      t.decimal :balance, precision: 8, scale: 2
      t.date :court_date
      t.decimal :rent, precision: 8, scale: 2
      t.decimal :cost, precision: 8, scale: 2
      t.date :writ_date
      t.string :case_num
      t.date :def_date
      t.boolean :file_judgment
      t.boolean :file_writ
      t.boolean :paid
      t.boolean :signed
      t.date :signed_date

      t.timestamps
    end
  end
end
