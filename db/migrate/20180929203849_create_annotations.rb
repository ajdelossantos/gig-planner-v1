class CreateAnnotations < ActiveRecord::Migration[5.2]
  def change
    create_table :annotations do |t|
      t.json :payload
      t.bigint :band_id, null: false

      t.timestamps
    end
  end
end
