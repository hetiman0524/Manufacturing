class PaperRollsController < ApplicationController
  def index
    @paper_rolls = PaperRoll.all
    @paper_roll = PaperRoll.new
  end

  def create
    @paper_roll = PaperRoll.create(paper_roll_params)
    redirect_back(fallback_location: root_path)
  end

  private
  def paper_roll_params
    params.require(:paper_roll).permit(:name)
  end
end
