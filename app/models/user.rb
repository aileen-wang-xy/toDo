# User has many tasks
# A specific task belong to a user
class User < ApplicationRecord
  has_secure_password
  has_many :tasks
  validates :username, uniqueness: {case_sensitive: false}
end
