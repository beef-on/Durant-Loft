class AddNameToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :name, :string
  end
end
