class AddReferencesToThemes < ActiveRecord::Migration[5.2]
  def change
    add_reference :themes, :spiral, foreign_key: true
    add_reference :themes, :expression_field, foreign_key: true
    add_reference :themes, :experience_field, foreign_key: true
    add_reference :themes, :life_map, foreign_key: true
  end
end
