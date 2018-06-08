class AddVotedToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :voted, :boolean
  end
end
