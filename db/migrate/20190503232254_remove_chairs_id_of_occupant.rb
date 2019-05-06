class RemoveChairsIdOfOccupant < ActiveRecord::Migration[5.2]
  def change
    remove_column :occupants, :chairs_id
  end
end
