class CreateArquivos < ActiveRecord::Migration
  def change
    create_table :arquivos do |t|
      t.string :descricao

      t.timestamps
    end
  end

   validates :descricao, presence :true
   validates :descricao, length: {minimum : 10}
end
