class RenamePaperRollMumberColumnToManufacturingStatuses < ActiveRecord::Migration[5.2]
  def change
    rename_column :manufacturing_statuses, :paper_roll_mumber, :paper_roll_number
  end
end
