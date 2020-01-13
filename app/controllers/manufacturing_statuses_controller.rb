class ManufacturingStatusesController < ApplicationController
  def new
    @manufacturingstatus = ManufacturingStatus.new
  end

  def create
    @manufacturingstatus = ManufacturingStatus.create(manufacturingstatus_params)
    redirect_to root_path
  end

  private
  def manufacturingstatus_params
    params.require(:manufacturing_status).permit(:brand_id, :production_plan, :production_remaining, :cigarette_shred_number, :small_box_number, :paper_roll_number, :filter_number)
  end
end
