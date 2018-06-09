class ChangeTimeColumnsInShifts < ActiveRecord::Migration[5.1]
  def change
  	remove_column :shifts, :start
    remove_column :shifts, :end

  	add_column(:shifts, :start, :datetime)
  	add_column(:shifts, :end, :datetime)
  end
end
