class User < ApplicationRecord
  has_many :user_affiliations, dependent: :destroy
  has_many :affiliations, through: :user_affiliations
end
