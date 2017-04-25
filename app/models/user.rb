class User < ApplicationRecord
  has_secure_password
  has_many :user_applications
  has_many :jobs, :through => :user_applications
  has_many :user_history_of_employments
  has_many :user_history_of_educations
  mount_uploader :avatar, AvatarUploader
  mount_uploader :document, DocumentUploader
  accepts_nested_attributes_for :user_history_of_educations
  accepts_nested_attributes_for :user_history_of_employments
end
