class AddPatronsRefToChairs < ActiveRecord::Migration[5.2]
  def change
     add_reference :chairs, :patrons, foreign_key: true
  end
end
