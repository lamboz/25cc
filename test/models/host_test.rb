# == Schema Information
#
# Table name: hosts
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class HostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
