# == Schema Information
#
# Table name: bands
#
#  id          :bigint(8)        not null, primary key
#  name        :string           not null
#  description :text
#

class Band < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :gigs
  has_many :set_lists
  has_many :pieces

end
