class User < ApplicationRecord
  has_secure_password
  has_many :user_applications
  has_many :jobs, :through => :user_applications
  mount_uploader :avatar, AvatarUploader
end
