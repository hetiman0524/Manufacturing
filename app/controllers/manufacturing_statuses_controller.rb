class ManufacturingStatusesController < ApplicationController
  def index
    @manufacturingstatuses = ManufacturingStatus.all
  end

  def new
    @manufacturingstatus = ManufacturingStatus.new
  end

  def create
    @manufacturingstatus = ManufacturingStatus.create(manufacturingstatus_params)
    redirect_to root_path
  end

  def show
    @manufacturingstatuses = ManufacturingStatus.all
    @manufacturingstatus = ManufacturingStatus.find(params[:manufacturingstatus])
    @remaining = @manufacturingstatus.production_remaining.to_i
    @csn = @manufacturingstatus.cigarette_shred_number.to_i
    @sbn = @manufacturingstatus.small_box_number.to_i
    @prn = @manufacturingstatus.paper_roll_number.to_i
    @fn = @manufacturingstatus.filter_number.to_i
  end

  private
  def manufacturingstatus_params
    params.require(:manufacturing_status).permit(:brand_id, :production_plan, :production_remaining, :cigarette_shred_number, :small_box_number, :paper_roll_number, :filter_number)
  end
end
