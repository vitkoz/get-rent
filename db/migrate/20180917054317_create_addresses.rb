class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :category, index: true
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.boolean :primary, index: true
      
      t.references :user, index: true
      t.references :person, index: true
      t.references :company, index: true

      t.timestamps
    end
  end
end
