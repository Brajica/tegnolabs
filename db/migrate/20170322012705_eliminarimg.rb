class Eliminarimg < ActiveRecord::Migration[5.0]
  def change
    remove_column :apps, :imagen, :string
    add_attachment :apps, :imagen
  end
end
