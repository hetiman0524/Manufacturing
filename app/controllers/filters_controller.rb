class FiltersController < ApplicationController
  def index
    @filters = Filter.all
    @filter = Filter.new
  end

  def create
    @filter = Filter.create(filter_params)
    redirect_back(fallback_location: root_path)
  end

  private
  def filter_params
    params.require(:filter).permit(:name)
  end
end
