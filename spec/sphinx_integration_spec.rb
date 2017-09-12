require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the riddle path', {:type => :feature}) do
  it('checks whether or not the riddle answer is correct') do
    answer = Sphinx.new("What walks on four legs in the morning, two legs in the afternoon, and three legs in the evening?","placeholder")
    visit('/')
    fill_in('answer', :with => 'person')
    click_button('Am I dead?')
    expect(page).to have_content('Your answer is correct!')
  end
end
