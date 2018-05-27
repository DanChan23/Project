class AddUserLevelToAccount < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :user_level, :string
  end
end
