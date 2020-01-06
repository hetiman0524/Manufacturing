class RenameFilterNumbersToFilter < ActiveRecord::Migration[5.2]
  def change
    rename_table :filter_numbers, :filters
  end
end
