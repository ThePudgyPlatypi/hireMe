class Job < ApplicationRecord
  has_many :user_applications
  has_many :users, :through => :user_applications
  belongs_to :employer
end
