class CreateAnnotations < ActiveRecord::Migration[5.2]
  def change
    create_table :annotations do |t|
      t.json :payload

      t.timestamps
    end
  end
end
