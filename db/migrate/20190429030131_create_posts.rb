class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.string :image
      t.string :link

      t.timestamps
    end
  end
end
