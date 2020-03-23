class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string "name"
      t.string "surname"
      t.string "email"
      t.string "phone"
      t.integer "birth_day"
      t.integer "birth_month"
      t.integer "birth_year"
      t.string "name1"
      t.string "name2"
      t.string "name3"
      t.string "surname1"
      t.string "surname2"
      t.string "surname3"
      t.integer "age"

      t.timestamps
    end
  end
end
