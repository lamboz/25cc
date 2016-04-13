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

class Host < ApplicationRecord
  has_many :appearances
  has_many :episodes, through: :appearances

  validates :email, presence: true
end
