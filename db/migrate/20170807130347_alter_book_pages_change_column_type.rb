class AlterBookPagesChangeColumnType < ActiveRecord::Migration[5.0]
  def change
    change_column :book_pages, :page_number, :string
  end
end
