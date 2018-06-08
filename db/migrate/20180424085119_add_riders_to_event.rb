class AddRidersToEvent < ActiveRecord::Migration[5.1]
  def change
    # add_column :events, :riders, :text
    add_column :events, :riders, :text, default: [].to_yaml
  end
end
