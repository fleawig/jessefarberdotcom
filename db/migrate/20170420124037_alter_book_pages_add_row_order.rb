class AlterBookPagesAddRowOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :book_pages, :row_order, :integer
    add_index :book_pages, :row_order
  end
end
