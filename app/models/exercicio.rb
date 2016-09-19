class Exercicio < ActiveRecord::Base
	has_and_belongs_to_many :ficha_muscs, throw: :ficha_exer
	
end
