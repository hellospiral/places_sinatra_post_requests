require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('root path', {:type => :feature}) do
  it("displays the root page") do
    visit("/")
    fill_in('place', :with => "NYC")
    click_button('Add Place')
    expect(page).to have_content("The place has been added!")
  end

  it("gets home from places.erb") do
    visit("/places")
    click_link("Back")
    expect(page).to have_content("NYC")
  end
end
