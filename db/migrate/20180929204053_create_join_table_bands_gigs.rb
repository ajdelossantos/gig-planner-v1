class CreateJoinTableBandsGigs < ActiveRecord::Migration[5.2]
  def change
    create_join_table :bands, :gigs do |t|
      # t.index [:band_id, :gig_id]
      # t.index [:gig_id, :band_id]
    end
  end
end
