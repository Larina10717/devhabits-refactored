class GoalsController < ApplicationController

  before_action :set_goal, only: [:show, :edit, :update, :destroy]


  def new
    @goal = Goal.new
  end

  def edit
  end

  def index
   @goal = Goal.where(id: current_user&.goal_id).map(&:name).first
  end

  def create
    @goal = Goal.new(goal_params)
      if @goal.save
        redirect_to goals_path, flash[:notice] = 'Goal was successfully created.' 
      else
        flash[:notice] = 'Goal could not be created' 
      end
  end

  def show
  end
  

  # PATCH/PUT /goals/1
  # PATCH/PUT /goals/1.json
  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html { redirect_to @goal, notice: 'Goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal }
      else
        format.html { render :edit }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals/1
  # DELETE /goals/1.json
  def destroy
    @goal.destroy
    respond_to do |format|
      format.html { redirect_to goals_url, notice: 'Goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      params.require(:goal).permit(:name, :description)
    end
end
