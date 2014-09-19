class CreateRespostas < ActiveRecord::Migration
  def change
    create_table :respostas do |t|
      t.string :has_many
      t.postagem :
      t.string :texto
      t.string :has_many
      t.usuario :

      t.timestamps
    end
  end
end
