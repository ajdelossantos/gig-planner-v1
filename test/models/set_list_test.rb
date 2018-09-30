# == Schema Information
#
# Table name: set_lists
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  payload    :json
#  band_id    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SetListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
