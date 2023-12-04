class ChangeReviewsUserIdToTeacherAndStudent < ActiveRecord::Migration[7.0]
  def change
    remove_reference :reviews, :user, foreign_key: true
    add_reference :reviews, :teacher, foreign_key: { to_table: :users }
    add_reference :reviews, :student, foreign_key: { to_table: :users }
  end
end
