class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, uniqueness: { case_sensitive: false }

  validates :balance, numericality: true
end
