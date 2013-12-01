require 'test_helper'

class JoinUsTest < ActionDispatch::IntegrationTest
  describe 'Join Us Page' do
    it 'can be visited' do
      visit root_path
      click_on 'JOIN US!'
      page.must_have_content 'Join Us'
    end
  end
end
