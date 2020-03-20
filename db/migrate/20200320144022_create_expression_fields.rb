class CreateExpressionFields < ActiveRecord::Migration[5.2]
  def change
    create_table :expression_fields do |t|
      t.integer :cerebral
      t.integer :physics
      t.integer :emotive
      t.integer :intuitive
    end
  end
end
