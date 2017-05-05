module ApplicationHelper

  def goals_collection
    Goal.all.to_a
  end

  def skills_collection
    Skill.all.to_a
  end
end
