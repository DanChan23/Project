class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.date :birthdate
      t.integer :age
      t.string :address
      t.integer :account_id
      t.string :contact_num

      t.timestamps
    end
  end
end
