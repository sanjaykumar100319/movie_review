class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, format: { with: /\S+@\S+/ },
            uniqueness: { case_sensitive: false }
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
end
