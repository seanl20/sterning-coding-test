class User < ApplicationRecord
  has_many :user_affiliations, dependent: :destroy
  has_many :affiliations, through: :user_affiliations
  has_many :user_locations, dependent: :destroy
  has_many :locations, through: :user_locations

  validates :first_name, presence:true
  validates :gender, presence: true
  validates :species, presence: true
end
