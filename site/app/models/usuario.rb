class Usuario < ActiveRecord::Base

	validates :nome,
  			presence: {message: 'Complete o campo Nome'},
  			length: { in: 5..40},
  			

  	validates :username,
  			presence: {message: 'Complete o campo Username'},
  			length: { in: 5..140},
  			uniqueness: {message: 'Esse usuario já foi cadastrado'}

  	validates :password,
  			presence: {message: 'Complete o campo Password'},
  			length: { in: 5..25},
  		

  	validates :turma,		
  			presence: {message: 'Escolha sua turma, por favor.'}
  		
  			

	
end
