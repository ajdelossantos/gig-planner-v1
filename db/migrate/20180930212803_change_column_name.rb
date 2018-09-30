class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :annotations, :band_id, :piece_id
  end
end
