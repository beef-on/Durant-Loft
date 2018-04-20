class ChangeTimeColumnsInShifts < ActiveRecord::Migration[5.1]
  def change
  	change_column(:shifts, :start, :datetime)
  	change_column(:shifts, :end, :datetime)
  end
end
