class CreateRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :registers do |t|
      t.string :full_name, :null => false
      t.string :phone, :null => false
      t.string :celphone, :null => false
      t.string :cpf, :null => false
      t.date :birth, :null => false
      t.integer :address_id

      t.timestamps
    end
  end
end
