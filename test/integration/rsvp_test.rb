require 'test_helper'

class RSVPTest < ActionDispatch::IntegrationTest
  describe 'RSVP Page' do
    it 'can be visited' do
      visit root_path
      click_on 'RSVP'
      page.must_have_content 'RSVP'
    end
  end
end
