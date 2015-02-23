class Course < ActiveRecord::Base

  validates :title, presence: true
  validates :day_night, presence: true

  belong_to :user

end
