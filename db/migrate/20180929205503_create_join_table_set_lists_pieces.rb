class CreateJoinTableSetListsPieces < ActiveRecord::Migration[5.2]
  def change
    create_join_table :set_lists, :pieces do |t|
      # t.index [:set_list_id, :piece_id]
      # t.index [:piece_id, :set_list_id]
    end
  end
end
