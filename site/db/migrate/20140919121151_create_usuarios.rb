class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :username, limit: 50
      t.string :Nome, limit: 100
      t.string :senha, limit: 16
      t.integer :id_turma
      t.string :permissoes

      t.timestamps
    end
  end 
end
