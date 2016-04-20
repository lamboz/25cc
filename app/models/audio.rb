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

class Audio < ApplicationRecord
  belongs_to :episode, inverse_of: :audio

  include AudioUploader[:media]
end
