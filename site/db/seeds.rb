# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

elemento_list = [
	["hidrogenio", 1, 0, 1, 2.2],
	["litio", 3, 4, 3, 0.98]]

elemento_list.each do |nome, num_eletrons, num_neutrons, num_protons, eletronegatividade|
	Elemento.create(nome: nome, num_eletrons: num_eletrons, num_neutrons: num_neutrons, num_protons: num_protons, eletronegatividade: eletronegatividade)
end