class CreateLifeMap < ActiveRecord::Migration[5.2]
  def change
    create_table :life_maps do |t|
      t.integer :action1
      t.integer :action2
      t.integer :action3
      t.integer :action4
    end
  end
end
