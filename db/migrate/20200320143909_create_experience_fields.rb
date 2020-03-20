class CreateExperienceFields < ActiveRecord::Migration[5.2]
  def change
    create_table :experience_fields do |t|
      t.integer :one
      t.integer :two
      t.integer :three
      t.integer :four
      t.integer :five
      t.integer :six
      t.integer :seven
      t.integer :eight
      t.integer :nine

    end
  end
end
