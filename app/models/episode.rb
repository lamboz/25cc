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

class Episode < ApplicationRecord
  has_many :appearances
  has_many :hosts, through: :appearances

  validates :title, presence: true

  scope :published, -> { where("published_at < '#{Time.now}'") }

  def self.current
    order(:published_at).where("published_at < '#{Time.now}'").last
  end

end
