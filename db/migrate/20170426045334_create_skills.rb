class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.integer "user_id"
      t.string "skill"
      t.boolean "advanced"
      t.boolean "experienced"
      t.boolean "beginner"
      t.text "description"
      t.timestamps
    end
    add_index('skills', ['user_id'])
  end
end
