class User < ApplicationRecord
  has_many :views
  has_secure_password
end
