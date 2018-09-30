# == Schema Information
#
# Table name: gigs
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  payload    :json
#  band_id    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Gig < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  belongs_to :band
  has_and_belongs_to_many :set_lists
  
end
