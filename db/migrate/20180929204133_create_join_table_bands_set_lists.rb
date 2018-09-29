class CreateJoinTableBandsSetLists < ActiveRecord::Migration[5.2]
  def change
    create_join_table :bands, :set_lists do |t|
      # t.index [:band_id, :set_list_id]
      # t.index [:set_list_id, :band_id]
    end
  end
end
