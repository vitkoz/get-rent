class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.integer :category, index: true
      t.string :area_code
      t.string :phone_number
      t.boolean :primary, index: true

      t.references :user, index: true
      t.references :person, index: true
      t.references :company, index: true

      t.timestamps
    end
  end
end
