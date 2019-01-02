class Caption < ApplicationRecord
  belongs_to :subtitle

  has_one :user, through: :subtitle, source: :user
end
