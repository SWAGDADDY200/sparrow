class AddUserIdToCritiques < ActiveRecord::Migration[7.0]
  def change
    add_column :critiques, :user_id, :integer
  end
end
