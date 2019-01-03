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


  def create_file
    File.open("out.txt", "w") do |f|
      f.write(this.get_complete_text )
    end
  end

    def get_complete_text
      output = ""
      captions.each do |caption|
        output += caption.caption_order + "\n"
        output += caption.start_time + "-->" + caption.end_time + "\n"
        output += caption.text + "\n\n"

      end
      output
    end
end
