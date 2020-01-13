class RenamePaperRollNumberColumnToManufacturingStatuses < ActiveRecord::Migration[5.2]
  def change
    rename_column :manufacturing_statuses, :Paper_roll_number, :paper_roll_number
  end
end
