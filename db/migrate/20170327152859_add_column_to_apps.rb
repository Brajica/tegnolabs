class AddColumnToApps < ActiveRecord::Migration[5.0]
  def change
    add_column :apps, :area, :string
  end
end
