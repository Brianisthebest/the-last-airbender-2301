require 'rails_helper'

RSpec.describe MembersService do
  describe 'get_members' do
    it 'returns the members for a nation' do
      member_service = MembersService.new
      expect(member_service.get_members('fire+nation')).to be_a(Array)
      expect(member_service.get_members('fire+nation').count).to eq(97)
    end
  end
end