class UserApplication < ApplicationRecord
  belongs_to :job
  belongs_to :user
  mount_uploader :document, DocumentUploader
end
