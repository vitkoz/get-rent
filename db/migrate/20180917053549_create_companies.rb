class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :type, index: true
      t.integer :category, index: true
      t.string :name

      t.timestamps
    end
  end
end
