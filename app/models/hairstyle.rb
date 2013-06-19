# == Schema Information
#
# Table name: hairstyles
#
#  id         :integer          not null, primary key
#  haircut    :string(255)
#  color      :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hairstyle < ActiveRecord::Base
  attr_accessible :color, :haircut
  validates :user_id, presence: true
end
