require 'rails_helper'

RSpec.describe Member do
  describe 'initialize' do
    it 'exists and has attributes' do
      data = { 
        :id=>"5cf5679a915ecad153ab68cc",
        :name=>"Afiko",
        :allies=>["Fire Nation"],
        :enemies=>["Aang"],
        :photoUrl=>"https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128",
        :affiliation=>"Fire Nation"
      }

      member = Member.new(data)

      expect(member).to be_a(Member)
      expect(member.id).to be_a(String)
      expect(member.id).to eq("5cf5679a915ecad153ab68cc")
      expect(member.name).to be_a(String)
      expect(member.name).to eq("Afiko")
      expect(member.allies).to be_an(Array)
      expect(member.allies).to eq(["Fire Nation"])
      expect(member.enemies).to be_an(Array)
      expect(member.enemies).to eq(["Aang"])
      expect(member.photo).to be_an(String)
      expect(member.photo).to eq(["https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128"])
      expect(member.affiliation).to be_a(String)
      expect(member.affiliation).to eq("Fire Nation")
    end
  end
end