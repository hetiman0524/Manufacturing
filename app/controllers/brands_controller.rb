class BrandsController < ApplicationController
  def index
  end

  def new
    @brand = Brand.new
  end

  def create
    Brand.create(brand_params)
    redirect_to 
  end

  def brand_params
    params.require(:brand).permit(:name, :cigarette_shred_id, :small_box_id, :paper_roll_id, :filter_id)
  end
end
