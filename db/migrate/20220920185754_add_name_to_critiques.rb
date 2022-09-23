class AddNameToCritiques < ActiveRecord::Migration[7.0]
  def change
    add_column :critiques, :name, :string
  end
end
