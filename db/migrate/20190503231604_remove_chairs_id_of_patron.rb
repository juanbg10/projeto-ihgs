class RemoveChairsIdOfPatron < ActiveRecord::Migration[5.2]
  def change
    remove_column :patrons, :chairs_id
  end
end
