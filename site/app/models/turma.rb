class Turma < ActiveRecord::Base
	validates :ano, :curso, presence: true
	validates :ano, :curso, length: { minimum: 4}
	validates :ano, format: { with: /[A-Za-z0-9 _]*[A-Za-z0-9][A-Za-z0-9 _]+/ }
	validates :curso, format: { with: /[A-Za-z _]*[A-Za-z][A-Za-z]+/ }
end
