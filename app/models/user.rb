class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :skills
  has_many :reservations
  has_many :sent_messages, foreign_key: 'student_id', class_name: 'Message'
  has_many :received_messages, foreign_key: 'teacher_id', class_name: 'Message'
  has_many :reviews, dependent: :destroy



  def self.teachers
    where(role: 'teach')
  end
  def self.students
    where(role: 'learn')
  end



  # def validated_reservations_count
  #   reservations.where(statut: 'Validée').count
  # end


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_one_attached :photo

end
