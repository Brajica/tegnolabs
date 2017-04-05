class AddValoracionesRefToRatings < ActiveRecord::Migration[5.0]
  def change
    add_reference :ratings, :valoraciones, foreign_key: true
  end
end
