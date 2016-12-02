class User < ApplicationRecord
  has_many :user_applications
  has_many :jobs, :through => :user_applications
end
