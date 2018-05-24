class CreateTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :types do |t|
      t.string :name
      t.integer :number_bed
      t.integer :max_person
      t.boolean :food_service
      t.decimal :price

      t.timestamps
    end
  end
end
