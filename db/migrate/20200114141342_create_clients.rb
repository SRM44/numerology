class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :surname
      t.integer :birth_day
      t.integer :birth_month
      t.integer :birth_year

      t.timestamps
    end
  end
end
