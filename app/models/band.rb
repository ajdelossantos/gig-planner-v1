# == Schema Information
#
# Table name: bands
#
#  id          :bigint(8)        not null, primary key
#  name        :string           not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Band < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :gigs
  has_many :set_lists
  has_many :pieces

  # Outputs JSON for band#show page
  def stringify_band_metadata
    band_metadata = {

        :id => self.id,
        :name => self.name,
        :description => self.description,
        :gigs => self.gigs.map {|gig| gig.stringify_gig_metadata},
        :setLists => self.set_lists.map {|set_list| set_list.stringify_set_list_metadata},
        :pieces => self.pieces.map {|piece| piece.stringify_piece_metadata}

    }

    band_metadata
  end

end
