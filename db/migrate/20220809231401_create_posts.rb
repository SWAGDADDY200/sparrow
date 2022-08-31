class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :author, null: false
      t.string :has_rich_text, null: false

      t.timestamps
    end
  end
end
