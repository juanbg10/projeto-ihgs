class AddChairRefToOcuppant < ActiveRecord::Migration[5.2]
  def change
    add_reference :occupants, :chairs, foreign_key: true
  end
end
