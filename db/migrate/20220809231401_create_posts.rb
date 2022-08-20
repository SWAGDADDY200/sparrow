class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :author
      t.string :has_rich_text

      t.timestamps
    end
  end
end
