class RolApps < ActiveRecord::Migration[5.0]
  def change
    add_column :apps, :rol, :string
  end
end
