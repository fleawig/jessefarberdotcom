class AddImagesToRnlIssues < ActiveRecord::Migration[5.0]
  def change
    add_column :rnl_issues, :cover_image, :string
    add_column :rnl_issues, :background_image, :string
  end
end
