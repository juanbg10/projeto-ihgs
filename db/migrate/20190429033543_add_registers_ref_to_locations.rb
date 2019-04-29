class AddRegistersRefToLocations < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :registers, foreign_key: true
  end
end
