class CreateExercicios < ActiveRecord::Migration
  def change
    create_table :exercicios do |t|
      t.string :grupo_musc
      t.string :dia
      t.string :serie
      t.decimal :repeticoes
      t.decimal :kg
      t.string :nome

      t.timestamps null: false
    end
  end
end
