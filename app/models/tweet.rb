class Tweet < ApplicationRecord
  belongs_to :user
  validates :tweet,length: {minimum:3, maximum:140},presence: true
end
