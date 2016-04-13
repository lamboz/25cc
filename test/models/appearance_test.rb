# == Schema Information
#
# Table name: appearances
#
#  id         :integer          not null, primary key
#  episode_id :integer
#  host_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_appearances_on_episode_id              (episode_id)
#  index_appearances_on_episode_id_and_host_id  (episode_id,host_id)
#  index_appearances_on_host_id                 (host_id)
#  index_appearances_on_host_id_and_episode_id  (host_id,episode_id)
#

require 'test_helper'

class AppearanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
