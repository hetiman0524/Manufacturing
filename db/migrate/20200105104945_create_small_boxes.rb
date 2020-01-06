class CreateSmallBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :small_boxes do |t|
      t.string :name
      t.timestamps
    end
  end
end
