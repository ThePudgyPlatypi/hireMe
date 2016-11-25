class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.integer "user_id"
      t.integer "job_id"
      t.string "name"
      t.text "resume"
      t.timestamps
    end
    add_index("applications", ['user_id', 'job_id'])
  end
end
