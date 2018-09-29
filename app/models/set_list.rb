class SetList < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  belongs_to :band
  has_and_belongs_to_many :gigs
  has_and_belongs_to_many :pieces

end
