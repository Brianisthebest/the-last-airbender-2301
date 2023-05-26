require 'rails_helper'

RSpec.describe MembersFacade do
  it 'returns an array of member objects' do
    members = MembersFacade.new
    expect(members.get_members('fire+nation')).to be_a(Array)
    expect(members).to all(be_a(Member))
  end
end