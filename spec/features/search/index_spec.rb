require 'rails_helper'

RSpec.describe 'Members', type: :feature do
  before(:each) do
    visit '/'
  
    select 'Fire Nation', from: :nation
    click_button 'Search For Members'
  end

  describe 'as a visiton' do
    it 'I see the total count of members' do
      expect(page).to have_content('A total of 97 members live in the Fire Nation')
    end
    
    it 'lists the first 25 members' do
      save_and_open_page
      expect(page).to have_css('.member', count: 25)
    end

    it 'for each member I see their name, photo, list of allies, list of enemies, or none of either have none, and any affiliations'
  end
end