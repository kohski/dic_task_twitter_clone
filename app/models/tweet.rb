class Tweet < ApplicationRecord
  validates :tweet, length:{ minimum:10,maximum:140 }
end
