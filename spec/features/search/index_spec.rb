require 'rails_helper'

RSpec.describe 'Members', type: :feature do
  before(:each) do
    @members = MembersFacade.new.get_members('fire+nation')
    visit '/'
  
    select 'Fire Nation', from: :nation
    click_button 'Search For Members'
  end

  describe 'as a visiton' do
    it 'I see the total count of members' do
      expect(page).to have_content('A total of 97 members live in the Fire Nation')
    end
    
    it 'lists the first 25 members' do
      expect(page).to have_css('.member', count: 25)
    end

    it 'for each member I see their name, photo, list of allies, list of enemies, or none of either have none, and any affiliations' do
      within(first('.member')) do
        within('.name') do
          expect(page).to have_content('Chan (Fire Nation admiral)')
        end
        within('.photo') do
          expect(page).to have_content("No photo available")
        end
        within('.affiliation') do
          expect(page).to have_content('Fire Nation Navy')
        end
        within('.allies') do
          expect(page).to have_content('Ozai')
        end
        within('.enemies') do
          expect(page).to have_content('Earth Kingdom')
        end
      end
      expect(page).to have_content("Allies: None")
      expect(page).to have_content("Enemies: None")
    end
  end
end