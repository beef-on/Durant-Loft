class AddDriversToEvent < ActiveRecord::Migration[5.1]
  def change
    # add_column :events, :drivers, :text
    add_column :events, :drivers, :text,  default: [].to_yaml
  end
end
