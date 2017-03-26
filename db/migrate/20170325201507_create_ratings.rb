class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.references :app, foreign_key: true
      t.references :user, foreign_key: true
      t.decimal :claridad
      t.decimal :motivacion
      t.decimal :contenido
      t.decimal :interaccino

      t.timestamps
    end
  end
end
