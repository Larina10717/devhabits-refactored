module UsersHelper
  def goals_collection
    Goal.all.to_a 
  end
end
