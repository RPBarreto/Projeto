class CreateTurmaUsuarios < ActiveRecord::Migration
  def change
    create_table :turma_usuarios do |t|
   
      t.timestamps
    end
  end
end
