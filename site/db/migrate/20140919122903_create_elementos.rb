class CreateElementos < ActiveRecord::Migration
  def change
    create_table :elementos do |t|
      t.string :nome, limit: 20
      t.integer :num_eletrons
      t.integer :num_neutrons
      t.integer :num_protons
      t.float :eletronegatividade

      t.timestamps
    end
  end

  validates :nome, :num_eletrons, :num_neutrons, :num_protons, :eletronegatividade, presence :true
  validates :nome, length: {minimum : 4}
  validates :num_eletrons, :num_protons, :num_neutrons, numericality: { only_integer: true }
  validates :eletronegatividade , numericality: true
  
end
