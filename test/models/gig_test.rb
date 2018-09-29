# == Schema Information
#
# Table name: gigs
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  payload    :json
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class GigTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
