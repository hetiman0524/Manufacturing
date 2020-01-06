class CreateFilterNumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :filter_numbers do |t|
      t.string :name
      t.timestamps
    end
  end
end
