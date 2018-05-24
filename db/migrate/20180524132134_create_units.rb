class CreateUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :units do |t|
      t.integer :building_id
      t.integer :type_id
      t.integer :person_id
      t.integer :room_number

      t.timestamps
    end
  end
end
