class CreateTurmaUsuarios < ActiveRecord::Migration
  def change
    create_table :turma_usuarios do |t|
      t.belongs_to :usuario
      t.belongs_to :turma

      t.timestamps
    end
  end
end
