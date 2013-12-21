require 'test_helper'

class RSVPTest < ActionDispatch::IntegrationTest
  describe 'RSVP Page' do
    let(:group)   { groups(:test) }
    let(:guest_1) { guests(:one) }
    let(:guest_2) { guests(:two) }

    it 'can be visited' do
      visit root_path
      click_on 'RSVP'
      page.must_have_content 'RSVP'
    end

    it 'allows groups to RSVP' do
      visit root_path
      click_on 'RSVP'

      fill_in 'Name of group', with: 'Test group'
      click_button 'Search'

      fill_in 'Group contact email', with: 'test@example.com'
      within('group-members') do
        select('Heck yes!', :from => 'RSVP')
        select('The whole week', :from => 'Stay duration')
      end

    end
  end
end
