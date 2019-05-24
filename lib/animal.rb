class Animal
  attr_reader :name, :type, :skills

  def initialize(info)
    @name = info[:name]
    @type = info[:type]
    @skills = info[:skills]
  end

  def forget_skill(skill)
    @skills.delete(skill)
  end

  def number_of_party_tricks
    @skills.count {|skill| skill.party_trick?}
  end

  def categorize_commands
    categorized = @skills.group_by{|skill| skill.party_trick?}
    categorized[:party_tricks] = categorized[true].map{|skill| skill.command}
    categorized[:not_party_tricks] = categorized[false].map{|skill| skill.command}
    categorized.delete(true)
    categorized.delete(false)
    categorized
  end
end
