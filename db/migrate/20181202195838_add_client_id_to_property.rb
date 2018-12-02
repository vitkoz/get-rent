class AddClientIdToProperty < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :client_id, :integer, index: true
  end
end
