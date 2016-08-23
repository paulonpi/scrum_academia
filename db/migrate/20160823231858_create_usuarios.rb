class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.string :telefone_responsavel
      t.string :data_nasc
      t.string :cref
      t.string :tipo_usuario

      t.timestamps null: false
    end
  end
end
