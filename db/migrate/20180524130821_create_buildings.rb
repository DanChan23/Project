class CreateBuildings < ActiveRecord::Migration[5.1]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :address
      t.string :owner

      t.timestamps
    end
  end
end
