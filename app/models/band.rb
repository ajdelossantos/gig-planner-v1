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
  def format_band_metadata
    {
      self.id => {
      :id => self.id,
      :name => self.name,
      :description => self.description,
      :gigs => self.gigs,
      :set_lists => self.set_lists,
      :pieces => self.pieces
      }
    }
  end

end
