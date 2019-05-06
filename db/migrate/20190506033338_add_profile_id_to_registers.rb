class AddProfileIdToRegisters < ActiveRecord::Migration[5.2]
  def change
    add_column :registers, :profile_id, :integer
  end
end
