class MembersFacade
  def get_members(nation)
    members = service.get_members(nation)

    members.map do |member|
      Member.new(member)
    end
  end

  def service
    @service ||= MembersService.new
  end
end