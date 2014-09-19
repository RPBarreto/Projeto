class CreateVisibilidades < ActiveRecord::Migration
  def change
    create_table :visibilidades do |t|
      t.string :has_many
      t.postagem :
      t.string :has_many
      t.turma :

      t.timestamps
    end
  end
end
