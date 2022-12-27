# == Schema Information
#
# Table name: resources
#
#  id            :bigint           not null, primary key
#  description   :text
#  price         :float
#  title         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  media_type_id :bigint           not null
#  subject_id    :bigint           not null
#  user_id       :bigint           not null
#
# Indexes
#
#  index_resources_on_media_type_id  (media_type_id)
#  index_resources_on_subject_id     (subject_id)
#  index_resources_on_user_id        (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (media_type_id => media_types.id)
#  fk_rails_...  (subject_id => subjects.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class ResourceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
