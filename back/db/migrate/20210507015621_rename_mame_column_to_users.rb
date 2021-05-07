class RenameMameColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users,:mame,:name
  end
end
