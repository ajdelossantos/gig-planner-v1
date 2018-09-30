class CreateGigs < ActiveRecord::Migration[5.2]
  def change
    create_table :gigs do |t|
      t.string :name, null: false
      t.json :payload
      t.bigint :band_id, null: false

      t.timestamps
    end
    add_index :gigs, :name, unique: true
  end
end
