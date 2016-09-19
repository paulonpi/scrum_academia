class FichaMusc < ActiveRecord::Base
	has_and_belongs_to_many :exercicios, throw: :ficha_exer
	belongs_to :usuario
end
