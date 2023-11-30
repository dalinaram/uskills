class AddColumnUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :interest, :text
    add_column :users, :address, :string
  end
end
