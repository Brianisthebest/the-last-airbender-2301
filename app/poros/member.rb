class Member
  attr_reader :id,
              :name,
              :allies,
              :enemies,
              :photo,
              :affiliation

  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photo = data[:photoUrl]
    @affiliation = data[:affiliation]
  end
end