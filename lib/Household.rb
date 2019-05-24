class Household
  def initialize(animals)
    @animals = animals
  end

  def animals_with_skill(skill)
    @animals.find_all{|animal| animal.skills.include?(skill)}
  end

  def no_party_tricks
    @animals.find_all{|animal| animal.skills.none?{|skill| skill.party_trick?}}
  end
end
