class ManufacturingStatusesController < ApplicationController
  def new
    @ManufacturingStatus = ManufacturingStatuses.new
  end

  def create
    @ManufacturingStatus = ManufacturingStatuses.create(manufacturingstatus_params)
  end

  private
  def manufacturingstatus_params
    
    
  end
end
