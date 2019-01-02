class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   has_many :subtitles, :dependent => :destroy
 has_many :videos, :dependent => :destroy

 has_many :captions, :through => :subtitles, :source => :captions
end
