class AddColumnsToHouseWorksUserIdAndDone < ActiveRecord::Migration[6.0]
  def change
    add_column :house_works, :user_id, :integer
    add_column :house_works, :done, :boolean
  end
end
