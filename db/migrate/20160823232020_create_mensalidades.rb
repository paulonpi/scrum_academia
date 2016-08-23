class CreateMensalidades < ActiveRecord::Migration
  def change
    create_table :mensalidades do |t|
      t.boolean :pago
      t.string :data_venc

      t.timestamps null: false
    end
  end
end
