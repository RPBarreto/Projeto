class Usuario < ActiveRecord::Base
  validates :username, :Nome, :senha, :id_turma, :permissoes, presence: true
  validates :username, :Nome, length: { minimum: 4}
  validates :username, length: { maximum: 50}
  validates :username, uniqueness: true
  validates :Nome, length: { maximum: 100}
  validates :senha, length: {in: 6..20}
  validates :id_turma, numericality: true
  validates :senha, format: { with: /[A-Za-z0-9]*[A-Za-z0-9][A-Za-z0-9]/ }
end
