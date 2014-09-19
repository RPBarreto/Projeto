class CreateArquivos < ActiveRecord::Migration
  def change
    create_table :arquivos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
