class ChangeAboutInEmployers < ActiveRecord::Migration[5.0]
  def change
    change_column :employers, :about, :text
  end
end
