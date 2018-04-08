class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.boolean :done
      t.string :title
      t.integer :star_id

      t.timestamps
    end
  end
end
