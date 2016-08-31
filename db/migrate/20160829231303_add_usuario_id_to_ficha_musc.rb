class AddUsuarioIdToFichaMusc < ActiveRecord::Migration
  def change
    add_column :ficha_muscs, :usuario_id, :integer
    add_column :ficha_muscs, :exercicio_id, :integer
  end
end
