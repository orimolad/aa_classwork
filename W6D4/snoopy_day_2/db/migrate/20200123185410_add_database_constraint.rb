class AddDatabaseConstraint < ActiveRecord::Migration[5.2]
  def change

    change_column :users, :username, :string, uniqueness: true
  end
end
