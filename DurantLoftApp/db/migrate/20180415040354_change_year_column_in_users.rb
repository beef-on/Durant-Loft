class ChangeYearColumnInUsers < ActiveRecord::Migration[5.1]
  def change
  	change_column(:users, :year, :string)
  end
end
