class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :photo
      t.text :bio
      t.string :office
      t.integer :register_id

      t.timestamps
    end
  end
end
