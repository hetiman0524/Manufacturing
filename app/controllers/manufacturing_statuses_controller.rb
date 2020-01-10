class ManufacturingStatusesController < ApplicationController
  def create
    @number = ManufacturingStatuses.new
    @number = ManufacturingStatuses.create(number_params)
  end

  private
  def number_params
    
  end
end
