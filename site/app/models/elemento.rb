class Elemento < ActiveRecord::Base

	validates :nome, :num_eletrons, :num_neutrons, :num_protons, :eletronegatividade, presence: true
	validates :nome, length: {minimum: 4}
  	validates :num_eletrons, :num_protons, :num_neutrons, numericality: { only_integer: true }
  	validates :eletronegatividade , numericality:  true
end