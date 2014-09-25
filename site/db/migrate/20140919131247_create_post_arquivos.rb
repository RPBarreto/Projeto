class CreatePostArquivos < ActiveRecord::Migration
  def change
    create_table :post_arquivos do |t|
      t.belongs_to :arquivo
      t.belongs_to :postagem

      t.timestamps
    end
  end
end
