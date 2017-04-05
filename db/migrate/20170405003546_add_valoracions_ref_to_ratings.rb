class AddValoracionsRefToRatings < ActiveRecord::Migration[5.0]
  def change
    add_reference :ratings, :valoracions, foreign_key: true
    remove_index :ratings, column: :valoraciones_id
    remove_column :ratings, :valoraciones_id
  end
end
