class User < ApplicationRecord
  has_many :applications
  has_many :jobs, :through => :applications
end
