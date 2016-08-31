class AddUsuarioIdToMensalidade < ActiveRecord::Migration
  def change
    add_column :mensalidades, :usuario_id, :integer
  end
end
