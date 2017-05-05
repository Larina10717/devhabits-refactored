class SkillsController < ApplicationController
  def index
  end

  def show
  end
  
  def new
    @skill = Skill.new
  end

  def create
    if @skill.save
      flash[:notice] = "Skill "#{@skill.name}" added"
    else
      flash[:error] = "Skill could not be created"
    end
    respond_with :html
  end

  def destroy
  end 
end
