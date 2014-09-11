class CreateElementos < ActiveRecord::Migration
  def change
    create_table :elementos do |t|
    	t.string  :nome,  :limit => 30
    	t.integer  :num_eletrons
    	t.integer  :num_neutrons
    	t.integer  :num_protons
    	t.integer  :eletronegatividade
      t.timestamps
    end
  end
end
