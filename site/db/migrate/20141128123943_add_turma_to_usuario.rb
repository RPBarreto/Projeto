class AddTurmaToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :turma, :string
    add_column :usuarios, :char, :string
  end
end
