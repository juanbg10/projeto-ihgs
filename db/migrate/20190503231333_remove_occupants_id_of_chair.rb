class RemoveOccupantsIdOfChair < ActiveRecord::Migration[5.2]
  def change
    remove_column :chairs, :occupants_id
  end
end
