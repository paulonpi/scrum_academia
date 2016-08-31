class AddUsuarioIdToFichaAvalFisica < ActiveRecord::Migration
  def change
    add_column :ficha_aval_fisicas, :usuario_id, :integer
  end
end
