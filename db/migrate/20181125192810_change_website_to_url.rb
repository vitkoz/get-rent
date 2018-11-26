class ChangeWebsiteToUrl < ActiveRecord::Migration[5.2]
  def change
    rename_column :websites, :website, :url
  end
end


