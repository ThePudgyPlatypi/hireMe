class User < ApplicationRecord
  has_secure_password
  has_many :user_applications
  has_many :jobs, :through => :user_applications
  has_many :user_history_of_employments
  has_many :user_history_of_educations, inverse_of: :user, autosave: true
  accepts_nested_attributes_for :user_history_of_educations, allow_destroy: true
  accepts_nested_attributes_for :user_history_of_employments, allow_destroy: true
  mount_uploader :avatar, AvatarUploader
  mount_uploader :document, DocumentUploader
end
