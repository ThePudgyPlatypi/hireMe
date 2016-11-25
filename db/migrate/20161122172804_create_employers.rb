class CreateEmployers < ActiveRecord::Migration[5.0]
  def change
    create_table :employers do |t|
      # general information
      t.string "company_name"
      t.string "about"
      t.string "industry"
      t.date "founded"
      t.integer "size"
      # Local address
      t.string "local_address"
      t.string "local_suite"
      t.string "local_apartment"
      t.string "local_building"
      t.string "local_city"
      t.string "local_state"
      t.string "local_country"
      # Main headquarters
      t.string "hq_address"
      t.string "hq_suite"
      t.string "hq_apartment"
      t.string "hq_building"
      t.string "hq_city"
      t.string "hq_state"
      t.string "hq_country"
      # Contact information
      t.string "contact_email"
      t.string "contact_phone"
      t.string "website"
      # Social media
      t.string "facebook"
      t.string "twitter"
      t.string "google"
      t.string "instagram"
      t.string "youtube"
      t.string "linkedin"
      t.string "pinterest"
      t.string "tumblr"
      t.string "flickr"
      t.string "reddit"
      t.string "snapchat"
      t.timestamps
    end
  end
end
