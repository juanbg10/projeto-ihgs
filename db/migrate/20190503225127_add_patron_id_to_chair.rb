class AddPatronIdToChair < ActiveRecord::Migration[5.2]
  def change
    #Adiciona a tabela :chairs, coluna patron_id, tipo integer 
    add_column :chairs, :patron_id, :integer
  end
end
