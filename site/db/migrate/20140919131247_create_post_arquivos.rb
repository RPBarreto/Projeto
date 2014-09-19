class CreatePostArquivos < ActiveRecord::Migration
  def change
    create_table :post_arquivos do |t|
      t.arquivo :has_many
      t.postagem :has_many

      t.timestamps
    end
  end
end
