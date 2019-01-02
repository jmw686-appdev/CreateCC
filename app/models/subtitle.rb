# == Schema Information
#
# Table name: subtitles
#
#  id            :bigint(8)        not null, primary key
#  complete_text :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#

class Subtitle < ApplicationRecord
  belongs_to :user
  has_many :captions, dependent: :destroy
  has_one :video, dependent: :destroy

  validates :complete_text, presence: true
end
