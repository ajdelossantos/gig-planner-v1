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
  
  def stringify_gig_metadata
    gig_metadata = {
      :id => self.id,
      :bandID => self.band_id,
      :name => self.name,
      :setLists => self.set_lists,
      :payload => self.payload
    }

    gig_metadata
  end

  def add_set_list(set_list)
    self.set_lists << set_list
  end

  def remove_set_list(set_list)
    self.set_lists.delete(set_list)
  end
end
