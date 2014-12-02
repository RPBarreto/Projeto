class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.integer :id_post
      t.varchar :conteudo
      t.integer :id_usuario

      t.timestamps
    end
  end
end
