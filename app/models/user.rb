class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items
  belongs_to_active_hash :favorite_car

  validates :nickname, presence: true
  validates :favorite_car_id, numericality: { other_than: 1, message: 'を選択してください'}
end