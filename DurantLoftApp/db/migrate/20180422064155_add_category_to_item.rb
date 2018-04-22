class AddCategoryToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :category, :string
  end
end
