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

end
