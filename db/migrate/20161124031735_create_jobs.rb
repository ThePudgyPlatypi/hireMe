class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.integer "employer_id"
      t.string "position"
      t.integer "salary"
      t.text "description"
      t.string "hours"
      t.timestamps
    end
    add_index('jobs', ['employer_id'])
  end
end
