class CreateSpirals < ActiveRecord::Migration[5.2]
  def change
    create_table :spirals do |t|
      t.integer :physics
      t.integer :emotional
      t.integer :mental
      t.integer :creative
      t.integer :path
    end
  end
end
