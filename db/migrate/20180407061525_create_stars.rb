class CreateStars < ActiveRecord::Migration[5.1]
  def change
    create_table :stars do |t|
      t.string :title
      t.text :content
      t.integer :priority

      t.timestamps
    end
  end
end
