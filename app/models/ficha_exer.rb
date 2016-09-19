class FichaExer < ActiveRecord::Base
  belongs_to :ficha_musc
  belongs_to :exercicio
end
