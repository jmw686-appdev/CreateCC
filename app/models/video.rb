# == Schema Information
#
# Table name: videos
#
#  id          :bigint(8)        not null, primary key
#  source      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  subtitle_id :integer
#  user_id     :integer
#

class Video < ApplicationRecord
  belongs_to :user
  belongs_to :subtitle
  
end
