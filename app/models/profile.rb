class Profile < ApplicationRecord
#   belongs_to :user, foreign_key: "user_id"
  belongs_to :user
  
  validates :phone_number, presence: true
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 18, only_integer: true }
  validates :gender, presence: true 
  
  
end
