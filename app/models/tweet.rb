class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments
  belongs_to_active_hash :favorite_car
  belongs_to_active_hash :type
  belomgs_to_active_hash :model_year
end
