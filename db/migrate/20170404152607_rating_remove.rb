class RatingRemove < ActiveRecord::Migration[5.0]
  def change

    remove_column :ratings, :contenido, :float
    remove_column :ratings, :interaccion, :float
    add_column :ratings, :valoracion, :float
  end
end
