class CreateBookPages < ActiveRecord::Migration[5.0]
  def change
    create_table :book_pages do |t|
      t.string :book_title
      t.integer :page_number
      t.date :year
      t.string :dimensions
      t.boolean :portfolio
      t.timestamps
    end
  end
end
