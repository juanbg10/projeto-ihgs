class AddUserIdToRegister < ActiveRecord::Migration[5.2]
  def change
    add_column :registers, :user_id, :integer 
  end
end
