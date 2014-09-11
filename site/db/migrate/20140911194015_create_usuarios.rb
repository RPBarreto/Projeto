class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
    t.string  :username, :limit => 15
         t.string  :Nome, :limit => 100
         t.string  :senha,  :limit => 20
         t.integer  :CPF,   :limit => 11
         t.string  :permissoes
         t.timestamps
    end
  end
end
