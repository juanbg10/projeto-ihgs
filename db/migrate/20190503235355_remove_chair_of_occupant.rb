class RemoveChairOfOccupant < ActiveRecord::Migration[5.2]
  def change
    remove_column :occupants, :chair_id
  end
end
