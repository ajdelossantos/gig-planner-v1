class CreateSetLists < ActiveRecord::Migration[5.2]
  def change
    create_table :set_lists do |t|
      t.string :name, null: false
      t.json :payload
      t.bigint :band_id, null: false

      t.timestamps
    end
    add_index :set_lists, :name, unique: true
  end
end
