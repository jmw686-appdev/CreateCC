# == Schema Information
#
# Table name: captions
#
#  id            :bigint(8)        not null, primary key
#  caption_order :integer
#  check         :boolean
#  end_time      :time
#  file_type     :string
#  start_time    :time
#  text          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  subtitle_id   :integer
#

class Caption < ApplicationRecord
  belongs_to :subtitle

  has_one :user, through: :subtitle, source: :user
end
