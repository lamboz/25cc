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

class EpisodesControllerTest < ActionDispatch::IntegrationTest
end
