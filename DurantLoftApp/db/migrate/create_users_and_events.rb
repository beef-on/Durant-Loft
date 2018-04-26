/Manually made, didn't use rails g/

class CreateUsersAndEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.timestamps
    end
 
    create_table :events do |t|
      t.integer :user_id
      t.timestamps
    end
 
    # create_table :users_events, id: false do |t|
    #   t.belongs_to :user, index: true
    #   t.belongs_to :event, index: true
    # end
    puts "test"
    create_table :events_users, id: false do |t|
      t.belongs_to :event, index: true
      t.belongs_to :user, index: true
    end
  end
end