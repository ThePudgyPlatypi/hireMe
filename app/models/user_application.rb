class UserApplication < ApplicationRecord
  belongs_to :job
  belongs_to :user
  has_many :user_application_job_histories
  mount_uploader :document, DocumentUploader
end
