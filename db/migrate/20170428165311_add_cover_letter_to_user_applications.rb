class AddCoverLetterToUserApplications < ActiveRecord::Migration[5.0]
  def change
    add_column :user_applications, :cover, :text
  end
end
