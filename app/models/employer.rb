class Employer < ApplicationRecord
  has_secure_password
  has_many :jobs
  mount_uploader :logo, EmployerImagesUploader
  mount_uploader :header, EmployerImagesUploader
end
