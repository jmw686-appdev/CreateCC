class Subtitle < ApplicationRecord

belongs_to :user
has_many :captions, :dependent => :destroy
has_one :video, :dependent => :destroy

validates :complete_text, :presence => true
end
