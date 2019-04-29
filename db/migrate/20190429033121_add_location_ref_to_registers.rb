class AddLocationRefToRegisters < ActiveRecord::Migration[5.2]
  def change
    add_reference :registers, :locations, foreign_key: true
  end
end
