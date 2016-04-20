# == Schema Information
#
# Table name: audios
#
#  id         :integer          not null, primary key
#  media_data :string
#  episode_id :integer
#  url        :string
#  duration   :string
#  size       :string
#  mime       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_audios_on_episode_id  (episode_id)
#

require 'test_helper'

class AudioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
