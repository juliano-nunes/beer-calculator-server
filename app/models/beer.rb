class Beer < ApplicationRecord
  validates :style, presence: true
  validates :min_temp, presence: true
  validates :max_temp, presence: true

  def average_temp
    (min_temp + max_temp) / 2
  end
end
