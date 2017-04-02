class AddImageUploadsToEmployers < ActiveRecord::Migration[5.0]
  def change
    add_column :employers, :logo, :string
    add_column :employers, :header, :string
  end
end
