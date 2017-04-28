class AddScheduleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :morning, :boolean
    add_column :users, :afternoon, :boolean
    add_column :users, :evening, :boolean
    add_column :users, :night, :boolean
  end
end
