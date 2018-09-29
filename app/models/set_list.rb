# == Schema Information
#
# Table name: set_lists
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  payload    :json
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SetList < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  belongs_to :band
  has_and_belongs_to_many :gigs
  has_and_belongs_to_many :pieces

end
