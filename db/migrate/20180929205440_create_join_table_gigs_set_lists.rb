class CreateJoinTableGigsSetLists < ActiveRecord::Migration[5.2]
  def change
    create_join_table :gigs, :set_lists do |t|
      # t.index [:gig_id, :set_list_id]
      # t.index [:set_list_id, :gig_id]
    end
  end
end
