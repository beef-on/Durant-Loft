class CreateShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts do |t|
      t.integer :start
      t.integer :end
      t.references :manner1, foreign_key: true
      t.references :manner2, foreign_key: true
      t.references :manner3, foreign_key: true

      t.timestamps
    end
  end
end
