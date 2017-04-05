class Appremove < ActiveRecord::Migration[5.0]
  def change
    remove_column :apps, :claridad
    remove_column :apps, :contenido
    remove_column :apps, :motivacion
    remove_column :apps, :interaccion
  end
end
