class AddToThemes < ActiveRecord::Migration[5.2]
  def change
    add_column :themes, :client_id, :integer
    add_column :themes, :physics, :integer
    add_column :themes, :emotional, :integer
    add_column :themes, :mental, :integer
    add_column :themes, :creative, :integer
    add_column :themes, :path, :integer
  end
end
