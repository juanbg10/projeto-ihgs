class ChangeNameAddressToLocation < ActiveRecord::Migration[5.2]
  def change
    rename_column :registers, :address_id, :location_id
  end
end
