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

  validates :username, :Nome, :senha, :id_turma, :permissoes, presence :true
  validates :username, :Nome, length: {minimum : 4}
  validates :username, length: {maximum : 50}
  validates :Nome, length: {maximum : 100}
  validates :senha, lenght: {in: 6..20}
  validates :id_turma, numericality: true
  validates :senha, format: { with: ^[A-Za-z0-9]*[A-Za-z0-9][A-Za-z0-9]*$ }
 
end
