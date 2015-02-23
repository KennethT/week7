class User < ActiveRecord::Base
  # has_secure_password
  validates :user_name, presence: true
  validates :about, presence: true

  has_many :courses

end
