require 'test_helper'

class LogisticsTest < ActionDispatch::IntegrationTest
  describe 'Logistics Page' do
    it 'can be visited' do
      visit root_path
      click_on 'LOGISTICS'
      page.must_have_content 'LOGISTICS'
    end
  end
end
