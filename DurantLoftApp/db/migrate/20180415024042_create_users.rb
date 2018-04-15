class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.integer :year
      t.boolean :manner
      t.boolean :admin

      t.timestamps
    end
  end
end
