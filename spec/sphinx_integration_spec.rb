require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

sphinx = Sphinx.new("place", "place")
sphinx.question = ["What walks on four legs in the morning, two legs in the afternoon, and three legs in the evening?", "Large as a mountain, small as a pea, Endlessly swimming in a waterless sea."]
describe('the riddle path', {:type => :feature}) do

  it('checks whether or not the riddle answer is correct') do
    sphinx = Sphinx.new("place", "place")
    visit('/')
    # sphinx = Sphinx.new(["What walks on four legs in the morning, two legs in the afternoon, and three legs in the evening?", "Large as a mountain, small as a pea, Endlessly swimming in a waterless sea."], "place")
    fill_in('answer1', :with => 'person')
    fill_in('answer2', :with => 'asteroids')

    save_and_open_page
    click_button('Am I dead?')

    expect(page).to have_content('dead')
  end
  it('checks whether or not the riddle answer is correct') do

    visit('/')
    fill_in('answer1', :with => 'person')
    fill_in('answer2', :with => 'spoon')
    click_button('Am I dead?')
    save_and_open_page
    expect(page).to have_content('dead')
  end
end
