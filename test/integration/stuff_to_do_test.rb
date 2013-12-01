require 'test_helper'

class StuffToDoTest < ActionDispatch::IntegrationTest
  describe 'Stuff To Do Page' do
    it 'can be visited' do
      visit root_path
      click_on 'STUFF TO DO'

      page.must_have_content 'STUFF TO DO'
    end
  end
end
