class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.integer :unit_id
      t.integer :person_id
      t.date :start_date
      t.date :end_date
      t.string :status
      t.decimal :total_amount

      t.timestamps
    end
  end
end
