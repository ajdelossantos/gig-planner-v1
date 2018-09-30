# == Schema Information
#
# Table name: set_lists
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  payload    :json
#  band_id    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SetList < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  belongs_to :band
  has_and_belongs_to_many :gigs
  has_and_belongs_to_many :pieces

  def stringify_set_list_metadata
    set_list_metadata = {
      self.id => {
        :id => self.id,
        :BandID => self.band_id,
        :name => self.name,
        :gigs => self.gigs,
        :pieces => self.pieces,
        :payload => self.payload
      }
    }

    set_list_metadata
  end

  def add_gig(gig)
    self.gigs << gig
  end

  def remove_gig(gig)
    self.gigs.delete(gig)
  end

  def add_piece(piece)
    self.pieces << piece
  end

  def remove_piece(piece)
    self.pieces.delete(piece)
  end

end
