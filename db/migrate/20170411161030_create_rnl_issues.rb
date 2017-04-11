class CreateRnlIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :rnl_issues do |t|
      t.integer :issue_number
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
