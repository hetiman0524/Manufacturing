class CreatePaperRolls < ActiveRecord::Migration[5.2]
  def change
    create_table :paper_rolls do |t|
      t.string :name
      t.timestamps
    end
  end
end
