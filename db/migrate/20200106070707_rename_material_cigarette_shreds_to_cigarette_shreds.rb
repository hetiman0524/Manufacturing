class RenameMaterialCigaretteShredsToCigaretteShreds < ActiveRecord::Migration[5.2]
  def change
    rename_table :material_cigarette_shreds, :cigarette_shreds
  end
end
