class FichaMusc < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :exercicio
end
