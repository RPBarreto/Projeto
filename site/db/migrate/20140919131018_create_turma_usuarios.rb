class CreateTurmaUsuarios < ActiveRecord::Migration
  def change
    create_table :turma_usuarios do |t|
      t.usuario :has_many
      t.turma :has_many

      t.timestamps
    end
  end
end
