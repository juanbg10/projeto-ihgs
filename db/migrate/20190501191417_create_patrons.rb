class CreatePatrons < ActiveRecord::Migration[5.2]
  def change
    create_table :patrons do |t|
      t.string :name
      t.text :bio
      t.date :date_of_born
      t.date :date_of_death
      t.integer :chair_id

      t.timestamps
      
    end
  end
end
