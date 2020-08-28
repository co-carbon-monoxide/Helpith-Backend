class AddColumnsToHouseWorks < ActiveRecord::Migration[6.0]
  def change
    add_column :house_works, :list_id, :integer
  end
end
