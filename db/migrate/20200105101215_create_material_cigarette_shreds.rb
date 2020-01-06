class CreateMaterialCigaretteShreds < ActiveRecord::Migration[5.2]
  def change
    create_table :material_cigarette_shreds do |t|
      t.string :name
      t.timestamps
    end
  end
end
