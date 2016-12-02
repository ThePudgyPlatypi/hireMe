class CreateUserApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :user_applications do |t|
      t.integer "job_id"
      t.integer "user_id"
      t.string "name"
      t.text "resume"
      t.timestamps
    end
    add_index('user_applications', ['job_id', 'user_id'])
  end
end
