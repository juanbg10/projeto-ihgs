class AddColumnChairIdToOccupant < ActiveRecord::Migration[5.2]
  def change
    add_column :occupants, :chair_id, :integer
  end
end
