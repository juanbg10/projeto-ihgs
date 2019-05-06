class AddOccupantRefToChair < ActiveRecord::Migration[5.2]
  def change
    add_reference :chairs, :occupants, foreign_key: true
  end
end
