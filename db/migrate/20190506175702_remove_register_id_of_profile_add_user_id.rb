class RemoveRegisterIdOfProfileAddUserId < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :register_id
    add_column :profiles, :user_id, :integer
  end
end
