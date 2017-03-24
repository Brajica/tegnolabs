class AgrCamposApp < ActiveRecord::Migration[5.0]
  def change
    remove_column :apps, :calificacion, :decimal
    add_column    :apps, :claridad, :decimal
    add_column    :apps, :contenido, :decimal
    add_column    :apps, :motivacion, :decimal
    add_column    :apps, :interaccion, :decimal
  end
end
