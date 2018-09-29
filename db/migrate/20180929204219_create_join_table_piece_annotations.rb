class CreateJoinTablePieceAnnotations < ActiveRecord::Migration[5.2]
  def change
    create_join_table :pieces, :annotations do |t|
      # t.index [:piece_id, :annotation_id]
      # t.index [:annotation_id, :piece_id]
    end
  end
end
