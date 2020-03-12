class AddEmailsToThemes < ActiveRecord::Migration[5.2]
  def change
    add_column :themes, :email, :string
    add_column :themes, :phone, :string
  end
end
