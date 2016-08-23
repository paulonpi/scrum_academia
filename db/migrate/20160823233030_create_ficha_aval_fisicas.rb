class CreateFichaAvalFisicas < ActiveRecord::Migration
  def change
    create_table :ficha_aval_fisicas do |t|
      t.decimal :antebraco_direito
      t.decimal :antebraco_esquerdo
      t.decimal :panturilha_direita
      t.decimal :panturilha_esquerda
      t.decimal :pescoco
      t.decimal :torax
      t.decimal :coxa_direita
      t.decimal :coxa_esquerda
      t.decimal :peso
      t.decimal :quadril
      t.decimal :braco_esquerdo
      t.decimal :braco_direito
      t.decimal :ombro
      t.decimal :abdome
      t.decimal :cintura
      t.decimal :altura
      t.text :obs

      t.timestamps null: false
    end
  end
end
