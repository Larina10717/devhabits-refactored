module GoalsHelper
  def goals_collection
    Goal.all.to_a 
  end
end
