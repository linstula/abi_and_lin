require 'test_helper'

class HomeTest < ActionDispatch::IntegrationTest
  describe 'Home Page' do
    it 'can be visited' do
      visit root_path
      current_path.must_equal(root_path)
    end
  end
end
