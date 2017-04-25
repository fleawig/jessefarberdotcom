class AddImagesToWorks < ActiveRecord::Migration[5.0]
  def change
    add_column :works, :image, :string
  end
end
