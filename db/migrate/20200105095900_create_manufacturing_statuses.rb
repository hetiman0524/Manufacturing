class CreateManufacturingStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :manufacturing_statuses do |t|
      t.integer :brand_id
      t.integer :production_plan
      t.integer :production_remaining
      t.integer :cigarette_shred_number
      t.integer :small_box_number
      t.integer :Paper_roll_number
      t.integer :filter_number
      t.timestamps
    end
  end
end
