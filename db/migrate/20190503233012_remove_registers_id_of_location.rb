class RemoveRegistersIdOfLocation < ActiveRecord::Migration[5.2]
  def change
    remove_column :locations, :registers_id
  end
end
