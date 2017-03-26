class Addcolumntorating < ActiveRecord::Migration[5.0]
  def change
    add_column :ratings, :unique, :string
  end
end
