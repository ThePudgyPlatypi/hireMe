class AddScheduleToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :morning, :boolean
    add_column :jobs, :afternoon, :boolean
    add_column :jobs, :evening, :boolean
    add_column :jobs, :night, :boolean
  end
end
