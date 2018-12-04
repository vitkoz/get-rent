class AddPropertyToRenter < ActiveRecord::Migration[5.2]
  def change
    add_reference :people, :property, foreign_key: true
    add_column :people, :unit, :string
    add_column :people, :rent, :decimal, precision: 8, scale: 2
  end
end
