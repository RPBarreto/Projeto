class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.integer :id_post
      t.string :conteudo
      t.integer :id_usuario
      t.string :data

      t.timestamps
    end
  end
end
