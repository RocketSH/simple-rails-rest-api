class User < ApplicationRecord
  require "securerandom"
  has_many :books

  has_secure_password

  validates :password, :username, presence: true
  validates :username, uniqueness: true
end
