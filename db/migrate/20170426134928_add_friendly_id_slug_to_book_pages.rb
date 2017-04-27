class AddFriendlyIdSlugToBookPages < ActiveRecord::Migration[5.0]
  def change
    add_column :book_pages, :slug, :string
    add_index :book_pages, :slug, unique: true
  end
end
