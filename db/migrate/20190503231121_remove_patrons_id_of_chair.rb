class RemovePatronsIdOfChair < ActiveRecord::Migration[5.2]
  def change
    remove_column :chairs, :patrons_id
  end
end
