gem ‘rspec-rails’

describe 'User can CRUD users' do

  scenario 'User can create a user' do
    visit '/'

    click_on "Register"


    fill_in 'user[user_name]', :with => "Cow"
    fill_in 'user[about]', :with => "curd"
    fill_in 'user[password]', :with => "milk"
    fill_in 'user[password_confirmation]', :with => "milk"

    click('Sign Up')


    expect(page).to have_content("Cow")
    expect(page).to have_content("Task was successfully created")
  end



end
