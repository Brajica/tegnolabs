class Add < ActiveRecord::Migration[5.0]
  def change
    add_column :valoracions , :nombre, :string
  end
end
