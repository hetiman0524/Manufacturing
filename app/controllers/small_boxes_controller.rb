class SmallBoxesController < ApplicationController
  def index
    @small_boxes = SmallBox.all
    @small_box = SmallBox.new
  end

  def create
    @small_box = SmallBox.create(small_box_params)
    redirect_back(fallback_location: root_path)
  end

  private
  def small_box_params
    params.require(:small_box).permit(:name)
  end
end
