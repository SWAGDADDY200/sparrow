class CreateCritiques < ActiveRecord::Migration[7.0]
  def change
    create_table :critiques do |t|
      t.belongs_to :post, null: false, foreign_key: true
      t.integer :rating
      t.text :comment

      t.timestamps
    end
  end
end
