class CreateApps < ActiveRecord::Migration[5.0]
  def change
    create_table :apps do |t|
      t.string :titulo
      t.string :cuerpo
      t.string :plataforma
      t.string :idioma
      t.string :sitio_web
      t.decimal :calificacion
      t.string :imagen

      t.timestamps
    end
  end
end
