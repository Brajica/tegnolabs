class RemoveeliminarusuarioFromusers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :usuario, :string
  end
end
