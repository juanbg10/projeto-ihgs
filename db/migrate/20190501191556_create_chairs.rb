class CreateChairs < ActiveRecord::Migration[5.2]
  def change
    create_table :chairs do |t|
      t.integer :number
      t.integer :occupant_id

      t.timestamps
    end
  end
end
