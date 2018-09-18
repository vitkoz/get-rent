class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :category
      t.string :email

      t.timestamps
    end
    add_index :emails, :category
  end
end
