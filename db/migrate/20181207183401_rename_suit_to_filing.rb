class RenameSuitToFiling < ActiveRecord::Migration[5.2]
  def change
    rename_table :suits, :filings
  end
end
