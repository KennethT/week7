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

  scenario 'User can edit a course' do

    visit('/courses/new')

    fill_in 'course[title]', :with => "milking"
    check "Click on box if it is a day class"

    click_on "Create Course"

    click_on "Edit"

    fill_in 'course[title]', :with => "milking1"
    uncheck "Click on box if it is a day class"

    click_on "Update Course"

    expect(page).to have_content("milking1")
    expect(page).to have_content("night")

  end

end
