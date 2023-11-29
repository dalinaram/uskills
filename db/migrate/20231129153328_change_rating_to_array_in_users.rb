class ChangeRatingToArrayInUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :rating, :integer
    add_column :users, :ratings, :integer, array: true, default: []
  end
end
