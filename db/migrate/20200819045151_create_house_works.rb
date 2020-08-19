class CreateHouseWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :house_works do |t|
      t.string :name
      t.integer :time

      t.timestamps
    end
  end
end
