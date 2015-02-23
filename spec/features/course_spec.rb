require 'rails_helper'

describe 'User can CRUD courses' do

  scenario 'User can create a course' do

    visit('/courses/new')

    fill_in 'course[title]', :with => "milking"
    check "Click on box if it is a day class"

    click_on "Create Course"

    expect(page).to have_content("milking")
    expect(page).to have_content("day")
  end



end
