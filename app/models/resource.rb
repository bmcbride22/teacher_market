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
end
