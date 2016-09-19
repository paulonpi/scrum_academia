class CreateExerciciosFichaMuscs < ActiveRecord::Migration
  def change
    create_table :exercicios_ficha_muscs do |t|
      t.integer :ficha_musc_id
      t.integer :exercicio_id

      t.timestamps null: false
    end
  end
end
