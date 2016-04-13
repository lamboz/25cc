# == Schema Information
#
# Table name: episodes
#
#  id           :integer          not null, primary key
#  title        :string
#  description  :text
#  slug         :string
#  published_at :datetime
#  duration     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_episodes_on_published_at  (published_at)
#

require 'test_helper'

class EpisodeTest < ActiveSupport::TestCase

  test ".published returns all records with publised_at in the past" do
    past = Episode.create!(published_at: 1.day.ago)
    future = Episode.create!(published_at: Time.now.tomorrow)

    results = Episode.published
    assert_includes(results, past)
    assert_not_includes(results, future)
  end

end
