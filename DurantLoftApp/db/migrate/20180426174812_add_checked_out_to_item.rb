class AddCheckedOutToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :checked_out, :boolean
  end
end
