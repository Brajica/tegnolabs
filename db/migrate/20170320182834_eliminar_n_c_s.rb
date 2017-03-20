class EliminarNCS < ActiveRecord::Migration[5.0]
  def change
      remove_column :users, :curso, :string
      remove_column :users, :nivel_es, :string
      remove_column :users, :semestre, :string
  end
end
