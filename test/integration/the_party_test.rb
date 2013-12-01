require 'test_helper'

class PartyTest < ActionDispatch::IntegrationTest
  describe 'Party Page' do
    it 'can be visited' do
      visit root_path
      click_on 'THE PARTY'

      page.must_have_content 'THE PARTY'
    end
  end
end
