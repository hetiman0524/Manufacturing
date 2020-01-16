class AddserialNumberTomanufacturingStatuses < ActiveRecord::Migration[5.2]
  def change
    add_column :manufacturing_statuses, :serial_number, :integer
  end
end
