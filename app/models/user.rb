class User < ActiveRecord::Base

  validates :user_name, presence: true, uniqueness: true
  validates :about, presence: true

  has_many :courses
  has_secure_password
end
