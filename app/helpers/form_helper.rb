module FormHelper
  def setup_user(user)
    user.user_history_of_educations ||= UserHistoryOfEducation.new
    user
  end
end
