class AddDegreeToUserHistoryOfEducation < ActiveRecord::Migration[5.0]
  def change
    remove_column :user_history_of_educations, :currently_attending, :boolean
    add_column :user_history_of_educations, :degree, :string
    change_column :user_history_of_educations, :gpa, :decimal
  end
end
