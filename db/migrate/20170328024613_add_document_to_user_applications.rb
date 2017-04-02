class AddDocumentToUserApplications < ActiveRecord::Migration[5.0]
  def change
    add_column :user_applications, :document, :string
  end
end
