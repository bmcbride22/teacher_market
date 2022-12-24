# == Schema Information
#
# Table name: resources
#
#  id         :bigint           not null, primary key
#  price      :float
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Resource < ApplicationRecord
  has_one_attached :resource_file
  has_many :resource_tags
  has_many :tags, through: :resource_tags
  belongs_to :user
  belongs_to :subject
  belongs_to :media_type
end
