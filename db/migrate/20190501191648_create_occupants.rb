class CreateOccupants < ActiveRecord::Migration[5.2]
  def change
    create_table :occupants do |t|
      t.string :name
      t.integer :chair_id

      t.timestamps
    end
  end
end
