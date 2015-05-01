require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the new word path', {:type => :feature}) do
  it('processes user input to display a unique success page') do
    visit('/')
    click_link('Add word')
    fill_in('word', :with => 'run')
    click_button('Submit')
    expect(page).to have_content('You have successfully added the word run!')
  end
end
