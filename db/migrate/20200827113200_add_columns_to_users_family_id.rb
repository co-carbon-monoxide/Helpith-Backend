class AddColumnsToUsersFamilyId < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :family_id, :integer
  end
end
