class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :cigarette_shred_id
      t.integer :small_box_id
      t.integer :paper_roll_id
      t.integer :filter_id
      t.timestamps
    end
  end
end
