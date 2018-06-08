class CreateShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts do |t|
      t.integer :start
      t.integer :end
      t.timestamps
    end
  end
end
