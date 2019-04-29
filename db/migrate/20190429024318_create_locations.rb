class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :zip_code, :limit => 8, :null => false
      t.string :city, :limit => 100, :null => false
      t.string :state, :limit => 2, :null => false
      t.string :neighborhood, :limit => 100, :null => false
      t.string :public_place, :limit => 100, :null => false
      t.integer :number, :null => false
      t.string :complement, :limit => false, :null => false
      t.integer :register_id

      t.timestamps
      
    end
  end
end
