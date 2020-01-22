class CigaretteShredsController < ApplicationController
  def index
    @cigarette_shreds = CigaretteShred.all
    @cigarette_shred = CigaretteShred.new
  end

  def create
    @cigarette_shred = CigaretteShred.create(cigarette_shred_params)
    redirect_back(fallback_location: root_path)
  end

  private
  def cigarette_shred_params
    params.require(:cigarette_shred).permit(:name)
  end
end
