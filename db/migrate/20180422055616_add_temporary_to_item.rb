class AddTemporaryToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :temporary, :boolean
  end
end
