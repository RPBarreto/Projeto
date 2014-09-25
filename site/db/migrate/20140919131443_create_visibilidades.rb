class CreateVisibilidades < ActiveRecord::Migration
  def change
    create_table :visibilidades do |t|
      t.belongs_to :postagem
      t.belongs_to :turma

      t.timestamps
    end
  end
end
