class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :performance, null: false, foreign_key: true

      t.timestamps
    end
  end
end
