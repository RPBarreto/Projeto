class CreateRespostas < ActiveRecord::Migration
  def change
    create_table :respostas do |t|
     t.string :texto
     t.belongs_to :postagem, :class_name => "Postagem", :foreign_key => "post"
     t.belongs_to :usuario, :class_name => "Usuario", :foreign_key => "autor"

      t.timestamps
    end
  end
end
