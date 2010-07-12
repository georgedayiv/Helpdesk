class AddEmployeeIdToHistories < ActiveRecord::Migration
  def self.up
    add_column :histories, :employee_id, :integer
  end

  def self.down
    remove_column :histories, :employee_id
  end
end
