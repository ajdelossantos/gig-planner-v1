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
end
