class CreateThemes < ActiveRecord::Migration[5.2]
  def change
    create_table :themes do |t|
      t.references :client, foreign_key: true
    end
  end
end
