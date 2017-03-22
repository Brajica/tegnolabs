class Cuerpo < ActiveRecord::Migration[5.0]
  def change
    remove_column :apps, :cuerpo , :string
    add_column    :apps, :cuerpo, :text 
  end
end
