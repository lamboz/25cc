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
  has_many :appearances, dependent: :destroy
  has_many :hosts, through: :appearances
  has_one :audio, inverse_of: :episode, dependent: :destroy

  validates :title, presence: true

  accepts_nested_attributes_for :audio, allow_destroy: true

  scope :published, -> { where("published_at < '#{Time.now}'") }
  scope :past_episodes, -> { published.where.not(id: current&.id) }

  def self.current
    order(:published_at).where("published_at < '#{Time.now}'").last
  end

end
