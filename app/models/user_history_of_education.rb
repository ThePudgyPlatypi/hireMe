class UserHistoryOfEducation < ApplicationRecord
  belongs_to :user, inverse_of: :user_history_of_educations
end
