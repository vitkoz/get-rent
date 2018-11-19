class CreateWebsites < ActiveRecord::Migration[5.2]
  def change
    create_table :websites do |t|
      t.integer :category
      t.string :website
      t.boolean :primary, index: true

      t.references :company, index: true

      t.timestamps
    end
    add_index :websites, :category
  end
end
