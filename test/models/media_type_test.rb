# == Schema Information
#
# Table name: media_types
#
#  id         :bigint           not null, primary key
#  extension  :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class MediaTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
