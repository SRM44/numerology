class AddInfosToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :name1, :string
    add_column :clients, :name2, :string
    add_column :clients, :name3, :string
    add_column :clients, :surname1, :string
    add_column :clients, :surname2, :string
    add_column :clients, :surname3, :string
  end
end
