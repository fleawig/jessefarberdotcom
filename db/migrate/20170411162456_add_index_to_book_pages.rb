class AddIndexToBookPages < ActiveRecord::Migration[5.0]
  def change
    add_index :book_pages, :book_title
  end
end
