# == Schema Information
#
# Table name: resource_tags
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  resource_id :bigint           not null
#  tag_id      :bigint           not null
#
# Indexes
#
#  index_resource_tags_on_resource_id  (resource_id)
#  index_resource_tags_on_tag_id       (tag_id)
#
# Foreign Keys
#
#  fk_rails_...  (resource_id => resources.id)
#  fk_rails_...  (tag_id => tags.id)
#
class ResourceTag < ApplicationRecord
    belongs_to :tag
    belongs_to :resource
            
end
