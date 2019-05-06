class RemoveRegisterIdOfLocations < ActiveRecord::Migration[5.2]
  def change
    remove_column :locations, :register_id
    add_column :locations, :user_id, :integer
  end
end
