class AlterWorksAddRowOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :works, :row_order, :integer
    add_index :works, :row_order
  end
end
