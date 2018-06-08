class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.references :User, foreign_key: true
      t.boolean :checkable

      t.timestamps
    end
  end
end
