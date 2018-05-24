class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :reservation_id
      t.integer :person_id
      t.decimal :amount_paid
      t.date :date_paid

      t.timestamps
    end
  end
end
