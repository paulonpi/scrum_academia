class CreateFichaMuscs < ActiveRecord::Migration
  def change
    create_table :ficha_muscs do |t|
      t.string :data
      t.string :validade
      t.string :obs

      t.timestamps null: false
    end
  end
end
