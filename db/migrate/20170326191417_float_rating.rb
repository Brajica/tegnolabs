class FloatRating < ActiveRecord::Migration[5.0]
  def change
    change_column :ratings, :claridad, :float
    change_column :ratings, :motivacion, :float
    change_column :ratings, :contenido, :float
    remove_column :ratings, :interaccino, :decimal
    add_column    :ratings, :interaccion, :float
  end
end
