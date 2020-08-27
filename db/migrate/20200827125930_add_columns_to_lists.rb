class AddColumnsToLists < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :family_id, :integer
  end
end
