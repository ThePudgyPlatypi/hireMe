class AddFieldsToUserApplications < ActiveRecord::Migration[5.0]
  def up

    add_column :user_applications, :phone, :string
  end

  def down

    remove_column :user_applications, :phone, :string
  end
end
