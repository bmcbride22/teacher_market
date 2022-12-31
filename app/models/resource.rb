# == Schema Information
#
# Table name: resources
#
#  id          :bigint           not null, primary key
#  description :text
#  price       :float
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_resources_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Resource < ApplicationRecord
  has_many_attached :resource_files, dependent: :destroy
  has_one_attached :photo, dependent: :destroy
  belongs_to :user

  acts_as_taggable_on :tags, :subjects

  validates :resource_files, presence: true
  validates :photo, presence: true

  TAGS = %w[Test Exam Quiz Essay Project Unit Individual Group Homework In-class]
  SUBJECTS = %w[Economics English Math Physics Biology Chemistry History Art Music]
end
