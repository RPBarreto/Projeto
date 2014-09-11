class CreateArquivos < ActiveRecord::Migration
  def change
    create_table :arquivos do |t|
    	t.string  :descricao,  :limit => 40
      t.timestamps
    end
  end
end
