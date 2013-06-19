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

require 'spec_helper'

describe Hairstyle do
  pending "add some examples to (or delete) #{__FILE__}"
end
