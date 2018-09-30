# == Schema Information
#
# Table name: pieces
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  payload    :json
#  band_id    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Piece < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true

  belongs_to :band
  has_many :annotations
  has_and_belongs_to_many :set_lists

  def stringify_piece_metadata
    piece_metadata = {
      self.id => {
        :id => self.id,
        :BandID => self.band_id,
        :title => self.title,
        :set_lists => self.set_lists,
        :payload => self.payload,
        # :annotations => self.annotations
      }
    }

    piece_metadata
  end

end
