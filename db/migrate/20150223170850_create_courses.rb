class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.boolean :day_night
      t.belongs_to :user, index: true
    end
    add_foreign_key :courses, :users
  end
end
