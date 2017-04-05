class Valoraciones < ActiveRecord::Migration[5.0]
  def change
    create_table :valoraciones do |t|
      t.string :nombre
    end
  end
end
