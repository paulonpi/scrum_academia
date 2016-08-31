class Usuario < ActiveRecord::Base
	belongs_to :cidade
	has_one :ficha_musc
	has_one :mensalidade
	has_one :ficha_aval_fisica

	validates_presence_of :nome, :endereco, :data_nasc, :tipo_usuario
end
