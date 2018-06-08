class AddNeedRidesToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :need_rides, :boolean
  end
end
