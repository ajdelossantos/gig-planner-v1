class CreateJoinTableBandsPieces < ActiveRecord::Migration[5.2]
  def change
    create_join_table :bands, :pieces do |t|
      # t.index [:band_id, :piece_id]
      # t.index [:piece_id, :band_id]
    end
  end
end
