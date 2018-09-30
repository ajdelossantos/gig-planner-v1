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
      :id => self.id,
      :BandID => self.band_id,
      :title => self.title,
      :setLists => self.set_lists,
      :payload => self.payload,
      :annotations => self.annotations.map {|annotation| annotation.stringify_annotation_metadata}
    }

    piece_metadata
  end

  def add_set_list(set_list)
    self.set_lists << set_list
  end

  def remove_set_list(set_list)
    self.set_lists.delete(set_list)
  end

end
