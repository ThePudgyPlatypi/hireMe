class AddAddressToUserApplications < ActiveRecord::Migration[5.0]
  def change
    add_column :user_applications, :address, :string
    add_column :user_applications, :city, :string
    add_column :user_applications, :state, :string
    add_column :user_applications, :zip, :string
    add_column :user_applications, :country, :string
    add_column :user_applications, :last_name, :string
  end
end
