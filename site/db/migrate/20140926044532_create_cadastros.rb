class CreateCadastros < ActiveRecord::Migration
  def change
    create_table :cadastros do |t|
      t.string :login
      t.string :senha
      t.string :nome

      t.timestamps
    end
  end
end
