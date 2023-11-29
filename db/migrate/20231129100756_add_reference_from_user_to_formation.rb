class AddReferenceFromUserToFormation < ActiveRecord::Migration[7.0]
  def change
    add_reference :formations, :users, foreign_key: true
  end
end
