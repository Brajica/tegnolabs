class Solucionar < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :ratings, column: :valoraciones_id
    drop_table :valoraciones
  end
end
