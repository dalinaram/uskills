class Review < ApplicationRecord
  belongs_to :teacher, :class_name => 'User'
  belongs_to :student, :class_name => 'User'
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
