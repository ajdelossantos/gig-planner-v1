class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.string :title, null: false
      t.json :payload
      t.bigint :band_id, null: false

      t.timestamps
    end
    add_index :pieces, :title, unique: true
  end
end
