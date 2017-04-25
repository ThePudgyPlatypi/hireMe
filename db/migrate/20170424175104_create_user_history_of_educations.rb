class CreateUserHistoryOfEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :user_history_of_educations do |t|
      t.string "user_id"
      t.string "school"
      t.string "major"
      t.string "current_term"
      t.date "graduation_date"
      t.integer "gpa"
      t.boolean "currently_attending"
      t.timestamps
    end
    add_index('user_history_of_employments', ['user_id'])
  end
end
