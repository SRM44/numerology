class AddNames < ActiveRecord::Migration[5.2]
  def change
    add_column :themes, :name1, :string
    add_column :themes, :name2, :string
    add_column :themes, :name3, :string
    add_column :themes, :surname1, :string
    add_column :themes, :surname2, :string
    add_column :themes, :surname3, :string
  end
end
