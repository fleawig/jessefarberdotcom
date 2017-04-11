class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.string :title
      t.date :year
      t.string :medium
      t.string :dimensions
      t.string :type
      t.timestamps
    end
    add_index :works, :type
  end
end
