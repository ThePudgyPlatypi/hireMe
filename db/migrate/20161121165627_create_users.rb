class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string "first_name", :limit => 50
      t.string "last_name", :limit => 50
      t.string "username", :limit => 20
      t.string "password"
      t.string "email"
      t.text "about", :limit => 2500
      t.text "story", :limit => 2500
      t.string "school"
      t.string "major"
      t.string "current_term"
      t.date "graduation_date"
      t.timestamps
    end
  end
end
