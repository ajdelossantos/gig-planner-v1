class Piece < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true

  belongs_to :band
  has_many :annotations
  has_and_belongs_to_many :set_lists

end
