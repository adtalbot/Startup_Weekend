require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the startup weekend path', {:type => :feature}) do
  it('shows the list of all teams and adds a new team') do
    visit('/')
    fill_in('Team Name', :with => 'Tigers')
    click_button('Add')
    expect(page).to have_content('Your request was successful')
  end
end
