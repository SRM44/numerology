class AddInfosToThemes < ActiveRecord::Migration[5.2]
  def change
    add_column :themes, :name, :string
    add_column :themes, :surname, :string
    add_column :themes, :birth_day, :integer
    add_column :themes, :birth_month, :integer
    add_column :themes, :birth_year, :integer
  end
end
