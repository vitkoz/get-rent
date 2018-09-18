class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :type
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :ssn

      t.timestamps
    end
    add_index :people, :type
  end
end
