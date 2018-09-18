class CreateWebsites < ActiveRecord::Migration[5.2]
  def change
    create_table :websites do |t|
      t.string :category
      t.string :website

      t.timestamps
    end
    add_index :websites, :category
  end
end
