class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.integer :category
      t.string :email
      t.boolean :primary, index: true

      t.references :user, index: true
      t.references :person, index: true
      t.references :company, index: true

      t.timestamps
    end
    add_index :emails, :category
  end
end
