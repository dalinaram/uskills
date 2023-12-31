class Message < ApplicationRecord
  validates :content, presence: true

  belongs_to :to, class_name: 'User', foreign_key: 'to_id'
  belongs_to :from, class_name: 'User', foreign_key: 'from_id'
end
