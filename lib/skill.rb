class Skill
  def initialize(skill, party_trick = false)
    @skill = skill
    @party_trick = party_trick
  end

  def command
    @skill
  end

  def party_trick?
    @party_trick
  end
end
