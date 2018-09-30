# == Schema Information
#
# Table name: annotations
#
#  id         :bigint(8)        not null, primary key
#  payload    :json
#  piece_id   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Annotation < ApplicationRecord
  belongs_to :piece

  def stringify_annotation_metadata
    annotation_metadata = {
      self.id => {
        :id => self.id,
        :pieceID => self.piece_id,
        :payload => self.payload
      }
    }

    annotation_metadata
  end
end
