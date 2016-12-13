class EmployerUsername < ActiveRecord::Migration[5.0]
  def change
    add_column 'employers', 'username', :string
  end
end
