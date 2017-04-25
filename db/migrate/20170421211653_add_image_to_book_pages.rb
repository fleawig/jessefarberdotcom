class AddImageToBookPages < ActiveRecord::Migration[5.0]
  def change
    add_column :book_pages, :image, :string
  end
end
