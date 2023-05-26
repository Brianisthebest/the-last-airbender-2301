require 'rails_helper'

RSpec.describe 'Members', type: :feature do
  describe 'as a visiton' do
    it 'I see the total count of members' do
      visit '/'

      select 'Fire Nation', from: :nation
      click_button 'Search For Members'

      expect(page).to have_content('Total Members: ')
    end
    
    it 'lists the first 25 members'
    it 'for each member I see their name, photo, list of allies, list of enemies, or none of either have none, and any affiliations'
  end
end