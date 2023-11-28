class DeleteBooleanTeacher < ActiveRecord::Migration[7.0]
  def change
    remove_column  :users, :teacher, :boolean
  end
end
