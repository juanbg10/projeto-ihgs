class RemoveLocationIdAndProfileIdOfRegisters < ActiveRecord::Migration[5.2]
  def change
    remove_column :registers, :location_id
    remove_column :registers, :profile_id
  end
end
