class Course < ActiveRecord::Base

  validates :title, presence: true
  validates :day_night, presence: true

  belongs_to :user

end
