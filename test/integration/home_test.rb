require 'test_helper'

class HomeTest < ActionDispatch::IntegrationTest
  describe 'Home Page' do
    it 'can be visited' do
      visit root_path
      page.must_have_content 'HOME'
    end
  end
end
