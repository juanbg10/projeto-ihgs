class RemoveLocationIdOfRegisters < ActiveRecord::Migration[5.2]
  def change
    remove_column :registers, :locations_id
  end
end
