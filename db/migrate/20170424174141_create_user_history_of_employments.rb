class CreateUserHistoryOfEmployments < ActiveRecord::Migration[5.0]
  def change
    create_table :user_history_of_employments do |t|
      t.integer "user_id"
      t.date "start_date"
      t.date "end_date"
      t.boolean "current_employer"
      t.string "job_title"
      t.string "contact_number"
      t.text "job_description"
      t.string "employer"
      t.timestamps
    end
    add_index('user_history_of_employments', ['user_id'])
  end
end
